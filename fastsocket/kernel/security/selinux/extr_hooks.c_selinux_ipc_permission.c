
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kern_ipc_perm {int dummy; } ;


 int IPC__UNIX_READ ;
 int IPC__UNIX_WRITE ;
 short S_IRUGO ;
 short S_IWUGO ;
 int ipc_has_perm (struct kern_ipc_perm*,int ) ;

__attribute__((used)) static int selinux_ipc_permission(struct kern_ipc_perm *ipcp, short flag)
{
 u32 av = 0;

 av = 0;
 if (flag & S_IRUGO)
  av |= IPC__UNIX_READ;
 if (flag & S_IWUGO)
  av |= IPC__UNIX_WRITE;

 if (av == 0)
  return 0;

 return ipc_has_perm(ipcp, av);
}
