
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int chan; scalar_t__ ppp_open; } ;
typedef TYPE_3__ irnet_socket ;
typedef int irnet_event ;
typedef void* __u32 ;
typedef int __u16 ;
struct TYPE_10__ {int index; int rwait; int spinlock; TYPE_2__* log; } ;
struct TYPE_7__ {int word; } ;
struct TYPE_8__ {char* name; int unit; TYPE_1__ hints; void* saddr; void* daddr; int event; } ;


 int CTRL_INFO ;
 int CTRL_TRACE ;
 int DEBUG (int ,char*,int) ;
 int DENTER (int ,char*,TYPE_3__*,int ,void*,char*) ;
 int DEXIT (int ,char*) ;
 int IRNET_MAX_EVENTS ;
 TYPE_5__ irnet_events ;
 int ppp_unit_number (int *) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;
 int strcpy (char*,char*) ;
 int wake_up_interruptible_all (int *) ;

__attribute__((used)) static void
irnet_post_event(irnet_socket * ap,
   irnet_event event,
   __u32 saddr,
   __u32 daddr,
   char * name,
   __u16 hints)
{
  int index;

  DENTER(CTRL_TRACE, "(ap=0x%p, event=%d, daddr=%08x, name=``%s'')\n",
  ap, event, daddr, name);





  spin_lock_bh(&irnet_events.spinlock);


  index = irnet_events.index;
  irnet_events.log[index].event = event;
  irnet_events.log[index].daddr = daddr;
  irnet_events.log[index].saddr = saddr;

  if(name)
    strcpy(irnet_events.log[index].name, name);
  else
    irnet_events.log[index].name[0] = '\0';

  irnet_events.log[index].hints.word = hints;

  if((ap != (irnet_socket *) ((void*)0)) && (ap->ppp_open))
    irnet_events.log[index].unit = ppp_unit_number(&ap->chan);
  else
    irnet_events.log[index].unit = -1;




  irnet_events.index = (index + 1) % IRNET_MAX_EVENTS;

  DEBUG(CTRL_INFO, "New event index is %d\n", irnet_events.index);


  spin_unlock_bh(&irnet_events.spinlock);


  wake_up_interruptible_all(&irnet_events.rwait);

  DEXIT(CTRL_TRACE, "\n");
}
