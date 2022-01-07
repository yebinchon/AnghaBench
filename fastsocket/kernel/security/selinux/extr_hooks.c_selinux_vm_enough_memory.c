
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mm_struct {int dummy; } ;


 int CAP_SYS_ADMIN ;
 int SECURITY_CAP_NOAUDIT ;
 int __vm_enough_memory (struct mm_struct*,long,int) ;
 int current ;
 int current_cred () ;
 int selinux_capable (int ,int ,int ,int ) ;

__attribute__((used)) static int selinux_vm_enough_memory(struct mm_struct *mm, long pages)
{
 int rc, cap_sys_admin = 0;

 rc = selinux_capable(current, current_cred(), CAP_SYS_ADMIN,
        SECURITY_CAP_NOAUDIT);
 if (rc == 0)
  cap_sys_admin = 1;

 return __vm_enough_memory(mm, pages, cap_sys_admin);
}
