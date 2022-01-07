
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct imapper {int addr; } ;
struct daio_mgr {int imap_lock; int imappers; scalar_t__ init_imap_added; int init_imap; } ;


 int daio_map_op ;
 int input_mapper_add (int *,struct imapper*,int ,struct daio_mgr*) ;
 int input_mapper_delete (int *,int ,int ,struct daio_mgr*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static int daio_imap_add(struct daio_mgr *mgr, struct imapper *entry)
{
 unsigned long flags;
 int err;

 spin_lock_irqsave(&mgr->imap_lock, flags);
 if (!entry->addr && mgr->init_imap_added) {
  input_mapper_delete(&mgr->imappers, mgr->init_imap,
       daio_map_op, mgr);
  mgr->init_imap_added = 0;
 }
 err = input_mapper_add(&mgr->imappers, entry, daio_map_op, mgr);
 spin_unlock_irqrestore(&mgr->imap_lock, flags);

 return err;
}
