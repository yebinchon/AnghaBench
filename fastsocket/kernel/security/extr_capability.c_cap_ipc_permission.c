
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct kern_ipc_perm {int dummy; } ;



__attribute__((used)) static int cap_ipc_permission(struct kern_ipc_perm *ipcp, short flag)
{
 return 0;
}
