
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct br2684_vcc {TYPE_1__* atmvcc; int (* old_push ) (TYPE_1__*,int *) ;int brvccs; int device; } ;
struct TYPE_2__ {int * user_back; } ;


 int THIS_MODULE ;
 int devs_lock ;
 int kfree (struct br2684_vcc*) ;
 int list_del (int *) ;
 int module_put (int ) ;
 int pr_debug (char*,struct br2684_vcc*,int ) ;
 int stub1 (TYPE_1__*,int *) ;
 int write_lock_irq (int *) ;
 int write_unlock_irq (int *) ;

__attribute__((used)) static void br2684_close_vcc(struct br2684_vcc *brvcc)
{
 pr_debug("removing VCC %p from dev %p\n", brvcc, brvcc->device);
 write_lock_irq(&devs_lock);
 list_del(&brvcc->brvccs);
 write_unlock_irq(&devs_lock);
 brvcc->atmvcc->user_back = ((void*)0);
 brvcc->old_push(brvcc->atmvcc, ((void*)0));
 kfree(brvcc);
 module_put(THIS_MODULE);
}
