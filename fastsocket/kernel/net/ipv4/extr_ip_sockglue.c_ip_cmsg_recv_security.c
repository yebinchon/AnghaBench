
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u32 ;
struct sk_buff {int dummy; } ;
struct msghdr {int dummy; } ;


 int SCM_SECURITY ;
 int SOL_IP ;
 int put_cmsg (struct msghdr*,int ,int ,int ,char*) ;
 int security_release_secctx (char*,int ) ;
 int security_secid_to_secctx (int ,char**,int *) ;
 int security_socket_getpeersec_dgram (int *,struct sk_buff*,int *) ;

__attribute__((used)) static void ip_cmsg_recv_security(struct msghdr *msg, struct sk_buff *skb)
{
 char *secdata;
 u32 seclen, secid;
 int err;

 err = security_socket_getpeersec_dgram(((void*)0), skb, &secid);
 if (err)
  return;

 err = security_secid_to_secctx(secid, &secdata, &seclen);
 if (err)
  return;

 put_cmsg(msg, SOL_IP, SCM_SECURITY, seclen, secdata);
 security_release_secctx(secdata, seclen);
}
