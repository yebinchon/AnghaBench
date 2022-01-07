
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct proc_dir_entry {int pde_unload_lock; TYPE_3__* proc_fops; int pde_users; } ;
struct poll_table_struct {int dummy; } ;
struct TYPE_5__ {TYPE_1__* dentry; } ;
struct file {TYPE_2__ f_path; } ;
struct TYPE_6__ {unsigned int (* poll ) (struct file*,struct poll_table_struct*) ;} ;
struct TYPE_4__ {int d_inode; } ;


 unsigned int DEFAULT_POLLMASK ;
 struct proc_dir_entry* PDE (int ) ;
 int pde_users_dec (struct proc_dir_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

__attribute__((used)) static unsigned int proc_reg_poll(struct file *file, struct poll_table_struct *pts)
{
 struct proc_dir_entry *pde = PDE(file->f_path.dentry->d_inode);
 unsigned int rv = DEFAULT_POLLMASK;
 unsigned int (*poll)(struct file *, struct poll_table_struct *);

 spin_lock(&pde->pde_unload_lock);
 if (!pde->proc_fops) {
  spin_unlock(&pde->pde_unload_lock);
  return rv;
 }
 pde->pde_users++;
 poll = pde->proc_fops->poll;
 spin_unlock(&pde->pde_unload_lock);

 if (poll)
  rv = poll(file, pts);

 pde_users_dec(pde);
 return rv;
}
