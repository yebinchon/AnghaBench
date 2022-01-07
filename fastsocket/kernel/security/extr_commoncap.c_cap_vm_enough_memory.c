
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int SECURITY_CAP_NOAUDIT ;
 int __vm_enough_memory (struct mm_struct*,long,int) ;
 scalar_t__ cap_capable (int ,int ,int ,int ) ;
 int current ;
 int current_cred () ;

int cap_vm_enough_memory(struct mm_struct *mm, long pages)
{
 int cap_sys_admin = 0;

 if (cap_capable(current, current_cred(), CAP_SYS_ADMIN,
   SECURITY_CAP_NOAUDIT) == 0)
  cap_sys_admin = 1;
 return __vm_enough_memory(mm, pages, cap_sys_admin);
}
