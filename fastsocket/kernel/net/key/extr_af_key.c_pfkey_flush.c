
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct xfrm_audit {scalar_t__ secid; int sessionid; int loginuid; } ;
struct sock {int dummy; } ;
struct sk_buff {int dummy; } ;
struct sadb_msg {int sadb_msg_pid; int sadb_msg_seq; int sadb_msg_satype; } ;
struct net {int dummy; } ;
struct TYPE_2__ {unsigned int proto; } ;
struct km_event {struct net* net; int event; int pid; int seq; TYPE_1__ data; } ;


 int EINVAL ;
 int ESRCH ;
 int XFRM_MSG_FLUSHSA ;
 int audit_get_loginuid (int ) ;
 int audit_get_sessionid (int ) ;
 int current ;
 int km_state_notify (int *,struct km_event*) ;
 unsigned int pfkey_satype2proto (int ) ;
 struct net* sock_net (struct sock*) ;
 int unicast_flush_resp (struct sock*,struct sadb_msg*) ;
 int xfrm_state_flush (struct net*,unsigned int,struct xfrm_audit*) ;

__attribute__((used)) static int pfkey_flush(struct sock *sk, struct sk_buff *skb, struct sadb_msg *hdr, void **ext_hdrs)
{
 struct net *net = sock_net(sk);
 unsigned proto;
 struct km_event c;
 struct xfrm_audit audit_info;
 int err, err2;

 proto = pfkey_satype2proto(hdr->sadb_msg_satype);
 if (proto == 0)
  return -EINVAL;

 audit_info.loginuid = audit_get_loginuid(current);
 audit_info.sessionid = audit_get_sessionid(current);
 audit_info.secid = 0;
 err = xfrm_state_flush(net, proto, &audit_info);
 err2 = unicast_flush_resp(sk, hdr);
 if (err || err2) {
  if (err == -ESRCH)
   err = 0;
  return err ? err : err2;
 }

 c.data.proto = proto;
 c.seq = hdr->sadb_msg_seq;
 c.pid = hdr->sadb_msg_pid;
 c.event = XFRM_MSG_FLUSHSA;
 c.net = net;
 km_state_notify(((void*)0), &c);

 return 0;
}
