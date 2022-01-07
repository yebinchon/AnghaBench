
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sock {struct sk_security_struct* sk_security; } ;
struct sk_security_struct {int sid; } ;


 int SECINITSID_ANY_SOCKET ;

__attribute__((used)) static void selinux_sk_getsecid(struct sock *sk, u32 *secid)
{
 if (!sk)
  *secid = SECINITSID_ANY_SOCKET;
 else {
  struct sk_security_struct *sksec = sk->sk_security;

  *secid = sksec->sid;
 }
}
