
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int pde_unload_lock; TYPE_1__* proc_fops; int pde_users; } ;
struct pde_opener {int (* release ) (struct inode*,struct file*) ;int lh; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* release ) (struct inode*,struct file*) ;} ;


 struct proc_dir_entry* PDE (struct inode*) ;
 struct pde_opener* find_pde_opener (struct proc_dir_entry*,struct inode*,struct file*) ;
 int kfree (struct pde_opener*) ;
 int list_del (int *) ;
 int pde_users_dec (struct proc_dir_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 int stub1 (struct inode*,struct file*) ;

__attribute__((used)) static int proc_reg_release(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *pde = PDE(inode);
 int rv = 0;
 int (*release)(struct inode *, struct file *);
 struct pde_opener *pdeo;

 spin_lock(&pde->pde_unload_lock);
 pdeo = find_pde_opener(pde, inode, file);
 if (!pde->proc_fops) {
  if (pdeo) {
   list_del(&pdeo->lh);
   spin_unlock(&pde->pde_unload_lock);
   rv = pdeo->release(inode, file);
   kfree(pdeo);
  } else
   spin_unlock(&pde->pde_unload_lock);
  return rv;
 }
 pde->pde_users++;
 release = pde->proc_fops->release;
 if (pdeo) {
  list_del(&pdeo->lh);
  kfree(pdeo);
 }
 spin_unlock(&pde->pde_unload_lock);

 if (release)
  rv = release(inode, file);

 pde_users_dec(pde);
 return rv;
}
