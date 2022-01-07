
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct daio_mgr {int mgr; int imap_lock; int imappers; } ;


 int free_input_mapper_list (int *) ;
 int kfree (struct daio_mgr*) ;
 int rsc_mgr_uninit (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int daio_mgr_destroy(struct daio_mgr *daio_mgr)
{
 unsigned long flags;


 spin_lock_irqsave(&daio_mgr->imap_lock, flags);
 free_input_mapper_list(&daio_mgr->imappers);
 spin_unlock_irqrestore(&daio_mgr->imap_lock, flags);

 rsc_mgr_uninit(&daio_mgr->mgr);
 kfree(daio_mgr);

 return 0;
}
