
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct whcrc {int event_work; int cmd_wq; int irq_lock; } ;


 int INIT_WORK (int *,int ) ;
 int init_waitqueue_head (int *) ;
 int spin_lock_init (int *) ;
 int whcrc_event_work ;

__attribute__((used)) static void whcrc_init(struct whcrc *whcrc)
{
 spin_lock_init(&whcrc->irq_lock);
 init_waitqueue_head(&whcrc->cmd_wq);
 INIT_WORK(&whcrc->event_work, whcrc_event_work);
}
