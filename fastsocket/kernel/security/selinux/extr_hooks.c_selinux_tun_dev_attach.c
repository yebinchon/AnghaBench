
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;


 int SECCLASS_TUN_SOCKET ;
 int TUN_SOCKET__RELABELFROM ;
 int TUN_SOCKET__RELABELTO ;
 int avc_has_perm (int ,int ,int ,int ,int *) ;
 int current_sid () ;

__attribute__((used)) static int selinux_tun_dev_attach(struct sock *sk)
{
 struct sk_security_struct *sksec = sk->sk_security;
 u32 sid = current_sid();
 int err;

 err = avc_has_perm(sid, sksec->sid, SECCLASS_TUN_SOCKET,
      TUN_SOCKET__RELABELFROM, ((void*)0));
 if (err)
  return err;
 err = avc_has_perm(sid, sid, SECCLASS_TUN_SOCKET,
      TUN_SOCKET__RELABELTO, ((void*)0));
 if (err)
  return err;

 sksec->sid = sid;

 return 0;
}
