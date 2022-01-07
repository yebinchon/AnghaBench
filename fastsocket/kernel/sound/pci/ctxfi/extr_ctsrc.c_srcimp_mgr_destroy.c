
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct srcimp_mgr {int mgr; int imap_lock; int imappers; } ;


 int free_input_mapper_list (int *) ;
 int kfree (struct srcimp_mgr*) ;
 int rsc_mgr_uninit (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

int srcimp_mgr_destroy(struct srcimp_mgr *srcimp_mgr)
{
 unsigned long flags;


 spin_lock_irqsave(&srcimp_mgr->imap_lock, flags);
 free_input_mapper_list(&srcimp_mgr->imappers);
 spin_unlock_irqrestore(&srcimp_mgr->imap_lock, flags);

 rsc_mgr_uninit(&srcimp_mgr->mgr);
 kfree(srcimp_mgr);

 return 0;
}
