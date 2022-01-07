
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct proc_dir_entry {int pde_unload_lock; int pde_openers; TYPE_1__* proc_fops; int pde_users; } ;
struct pde_opener {int (* release ) (struct inode*,struct file*) ;int lh; struct file* file; struct inode* inode; } ;
struct inode {int dummy; } ;
struct file {int dummy; } ;
struct TYPE_2__ {int (* open ) (struct inode*,struct file*) ;int (* release ) (struct inode*,struct file*) ;} ;


 int ENOENT ;
 int ENOMEM ;
 int GFP_KERNEL ;
 struct proc_dir_entry* PDE (struct inode*) ;
 int __pde_users_dec (struct proc_dir_entry*) ;
 int kfree (struct pde_opener*) ;
 struct pde_opener* kmalloc (int,int ) ;
 int list_add (int *,int *) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int proc_reg_open(struct inode *inode, struct file *file)
{
 struct proc_dir_entry *pde = PDE(inode);
 int rv = 0;
 int (*open)(struct inode *, struct file *);
 int (*release)(struct inode *, struct file *);
 struct pde_opener *pdeo;
 pdeo = kmalloc(sizeof(struct pde_opener), GFP_KERNEL);
 if (!pdeo)
  return -ENOMEM;

 spin_lock(&pde->pde_unload_lock);
 if (!pde->proc_fops) {
  spin_unlock(&pde->pde_unload_lock);
  kfree(pdeo);
  return -ENOENT;
 }
 pde->pde_users++;
 open = pde->proc_fops->open;
 release = pde->proc_fops->release;
 spin_unlock(&pde->pde_unload_lock);

 if (open)
  rv = open(inode, file);

 spin_lock(&pde->pde_unload_lock);
 if (rv == 0 && release) {

  pdeo->inode = inode;
  pdeo->file = file;

  pdeo->release = release;
  list_add(&pdeo->lh, &pde->pde_openers);
 } else
  kfree(pdeo);
 __pde_users_dec(pde);
 spin_unlock(&pde->pde_unload_lock);
 return rv;
}
