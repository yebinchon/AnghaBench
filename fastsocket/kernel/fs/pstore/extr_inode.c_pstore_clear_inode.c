
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pstore_private {int list; } ;
struct inode {struct pstore_private* i_private; } ;


 int allpstore_lock ;
 int kfree (struct pstore_private*) ;
 int list_del (int *) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

__attribute__((used)) static void pstore_clear_inode(struct inode *inode)
{
 struct pstore_private *p = inode->i_private;
 unsigned long flags;
 if (p) {
  spin_lock_irqsave(&allpstore_lock, flags);
  list_del(&p->list);
  spin_unlock_irqrestore(&allpstore_lock, flags);
  kfree(p);
 }
}
