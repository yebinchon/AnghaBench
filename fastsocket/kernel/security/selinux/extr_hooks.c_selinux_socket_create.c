
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
typedef int u16 ;
struct task_security_struct {scalar_t__ sockcreate_sid; int sid; } ;
struct cred {struct task_security_struct* security; } ;


 int SOCKET__CREATE ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 struct cred* current_cred () ;
 int socket_type_to_security_class (int,int,int) ;

__attribute__((used)) static int selinux_socket_create(int family, int type,
     int protocol, int kern)
{
 const struct cred *cred = current_cred();
 const struct task_security_struct *tsec = cred->security;
 u32 sid, newsid;
 u16 secclass;
 int err = 0;

 if (kern)
  goto out;

 sid = tsec->sid;
 newsid = tsec->sockcreate_sid ?: sid;

 secclass = socket_type_to_security_class(family, type, protocol);
 err = avc_has_perm(sid, newsid, secclass, SOCKET__CREATE, ((void*)0));

out:
 return err;
}
