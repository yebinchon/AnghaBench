
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_audit {scalar_t__ secid; int sessionid; int loginuid; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_seq; int sadb_msg_pid; } ;
struct net {int dummy; } ;
struct TYPE_2__ {int type; } ;
struct km_event {struct net* net; int seq; int pid; int event; TYPE_1__ data; } ;


 int ESRCH ;
 int XFRM_MSG_FLUSHPOLICY ;
 int XFRM_POLICY_TYPE_MAIN ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 int km_policy_notify (int *,int ,struct km_event*) ;
 struct net* sock_net (struct sock*) ;
 int unicast_flush_resp (struct sock*,struct sadb_msg*) ;
 int xfrm_policy_flush (struct net*,int ,struct xfrm_audit*) ;

__attribute__((used)) static int pfkey_spdflush(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct net *net = sock_net(sk);
 struct km_event c;
 struct xfrm_audit audit_info;
 int err, err2;

 audit_info.loginuid = audit_get_loginuid(current);
 audit_info.sessionid = audit_get_sessionid(current);
 audit_info.secid = 0;
 err = xfrm_policy_flush(net, XFRM_POLICY_TYPE_MAIN, &audit_info);
 err2 = unicast_flush_resp(sk, hdr);
 if (err || err2) {
  if (err == -ESRCH)
   return 0;
  return err;
 }

 c.data.type = XFRM_POLICY_TYPE_MAIN;
 c.event = XFRM_MSG_FLUSHPOLICY;
 c.pid = hdr->sadb_msg_pid;
 c.seq = hdr->sadb_msg_seq;
 c.net = net;
 km_policy_notify(((void*)0), 0, &c);

 return 0;
}
