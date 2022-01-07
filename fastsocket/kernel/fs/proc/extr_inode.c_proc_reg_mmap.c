
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct proc_dir_entry {int pde_unload_lock; TYPE_3__* proc_fops; int pde_users; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {int (* mmap ) (struct file*,struct vm_area_struct*) ;} ;
struct TYPE_4__ {int d_inode; } ;


 int EIO ;
 struct proc_dir_entry* PDE (int ) ;
 int pde_users_dec (struct proc_dir_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static int proc_reg_mmap(struct file *file, struct vm_area_struct *vma)
{
 struct proc_dir_entry *pde = PDE(file->f_path.dentry->d_inode);
 int rv = -EIO;
 int (*mmap)(struct file *, struct vm_area_struct *);

 spin_lock(&pde->pde_unload_lock);
 if (!pde->proc_fops) {
  spin_unlock(&pde->pde_unload_lock);
  return rv;
 }
 pde->pde_users++;
 mmap = pde->proc_fops->mmap;
 spin_unlock(&pde->pde_unload_lock);

 if (mmap)
  rv = mmap(file, vma);

 pde_users_dec(pde);
 return rv;
}
