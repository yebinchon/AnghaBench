
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct kern_ipc_perm {struct ipc_security_struct* security; } ;
struct ipc_security_struct {int sid; } ;



__attribute__((used)) static void selinux_ipc_getsecid(struct kern_ipc_perm *ipcp, u32 *secid)
{
 struct ipc_security_struct *isec = ipcp->security;
 *secid = isec->sid;
}
