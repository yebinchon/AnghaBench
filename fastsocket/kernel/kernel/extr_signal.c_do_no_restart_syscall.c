
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct restart_block {int dummy; } ;


 long EINTR ;

long do_no_restart_syscall(struct restart_block *param)
{
 return -EINTR;
}
