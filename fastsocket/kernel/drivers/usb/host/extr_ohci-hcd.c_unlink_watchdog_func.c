
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct ohci_hcd {unsigned int eds_scheduled; int zf_delay; int lock; int unlink_watchdog; TYPE_1__* regs; struct ed* ed_to_check; struct ed** periodic; } ;
struct ed {struct ed* ed_next; } ;
struct TYPE_2__ {int control; int intrenable; int intrstatus; } ;


 int GFP_ATOMIC ;
 scalar_t__ HZ ;
 unsigned int NUM_INTS ;
 int OHCI_INTR_SF ;
 int check_ed (struct ohci_hcd*,struct ed*) ;
 scalar_t__ jiffies ;
 struct ed** kcalloc (unsigned int,int,int ) ;
 int kfree (struct ed**) ;
 int mod_timer (int *,int ) ;
 int ohci_readl (struct ohci_hcd*,int *) ;
 int ohci_writel (struct ohci_hcd*,int ,int *) ;
 int round_jiffies (scalar_t__) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void unlink_watchdog_func(unsigned long _ohci)
{
 unsigned long flags;
 unsigned max;
 unsigned seen_count = 0;
 unsigned i;
 struct ed **seen = ((void*)0);
 struct ohci_hcd *ohci = (struct ohci_hcd *) _ohci;

 spin_lock_irqsave(&ohci->lock, flags);
 max = ohci->eds_scheduled;
 if (!max)
  goto done;

 if (ohci->ed_to_check)
  goto out;

 seen = kcalloc(max, sizeof *seen, GFP_ATOMIC);
 if (!seen)
  goto out;

 for (i = 0; i < NUM_INTS; i++) {
  struct ed *ed = ohci->periodic[i];

  while (ed) {
   unsigned temp;


   for (temp = 0; temp < seen_count; temp++) {
    if (seen[temp] == ed) {

     ed = ((void*)0);
     break;
    }
   }
   if (!ed)
    break;
   seen[seen_count++] = ed;
   if (!check_ed(ohci, ed)) {
    ed = ed->ed_next;
    continue;
   }




   ohci->ed_to_check = ed;
   ohci->zf_delay = 2;







   ohci_writel(ohci, OHCI_INTR_SF,
     &ohci->regs->intrstatus);
   ohci_writel(ohci, OHCI_INTR_SF,
     &ohci->regs->intrenable);


   (void) ohci_readl(ohci, &ohci->regs->control);

   goto out;
  }
 }
out:
 kfree(seen);
 if (ohci->eds_scheduled)
  mod_timer(&ohci->unlink_watchdog, round_jiffies(jiffies + HZ));
done:
 spin_unlock_irqrestore(&ohci->lock, flags);
}
