
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct proc_dir_entry {scalar_t__ pde_users; scalar_t__ pde_unload_completion; } ;


 int complete (scalar_t__) ;

__attribute__((used)) static void __pde_users_dec(struct proc_dir_entry *pde)
{
 pde->pde_users--;
 if (pde->pde_unload_completion && pde->pde_users == 0)
  complete(pde->pde_unload_completion);
}
