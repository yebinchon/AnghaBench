
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc_dir_entry {int pde_unload_lock; TYPE_1__* proc_fops; int pde_users; } ;
struct TYPE_6__ {TYPE_2__* dentry; } ;
struct file {TYPE_3__ f_path; } ;
typedef int loff_t ;
struct TYPE_5__ {int d_inode; } ;
struct TYPE_4__ {int (* llseek ) (struct file*,int ,int) ;} ;


 int EINVAL ;
 struct proc_dir_entry* PDE (int ) ;
 int default_llseek (struct file*,int ,int) ;
 int pde_users_dec (struct proc_dir_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static loff_t proc_reg_llseek(struct file *file, loff_t offset, int whence)
{
 struct proc_dir_entry *pde = PDE(file->f_path.dentry->d_inode);
 loff_t rv = -EINVAL;
 loff_t (*llseek)(struct file *, loff_t, int);

 spin_lock(&pde->pde_unload_lock);




 if (!pde->proc_fops) {
  spin_unlock(&pde->pde_unload_lock);
  return rv;
 }




 pde->pde_users++;




 llseek = pde->proc_fops->llseek;
 spin_unlock(&pde->pde_unload_lock);

 if (!llseek)
  llseek = default_llseek;
 rv = llseek(file, offset, whence);

 pde_users_dec(pde);
 return rv;
}
