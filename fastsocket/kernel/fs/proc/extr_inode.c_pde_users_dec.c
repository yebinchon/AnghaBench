
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {int pde_unload_lock; } ;


 int __pde_users_dec (struct proc_dir_entry*) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void pde_users_dec(struct proc_dir_entry *pde)
{
 spin_lock(&pde->pde_unload_lock);
 __pde_users_dec(pde);
 spin_unlock(&pde->pde_unload_lock);
}
