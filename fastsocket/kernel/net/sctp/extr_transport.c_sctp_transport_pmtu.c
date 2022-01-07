
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sock {int dummy; } ;
struct sctp_transport {int pathmtu; int saddr; int ipaddr; int asoc; TYPE_1__* af_specific; } ;
struct flowi {int dummy; } ;
struct dst_entry {int dummy; } ;
struct TYPE_2__ {struct dst_entry* (* get_dst ) (int ,int *,int *,struct flowi*,struct sock*) ;} ;


 int SCTP_DEFAULT_MAXSEGMENT ;
 int dst_mtu (struct dst_entry*) ;
 int dst_release (struct dst_entry*) ;
 struct dst_entry* stub1 (int ,int *,int *,struct flowi*,struct sock*) ;

void sctp_transport_pmtu(struct sctp_transport *transport, struct sock *sk)
{
 struct dst_entry *dst;
 struct flowi fl;

 dst = transport->af_specific->get_dst(transport->asoc,
           &transport->ipaddr,
           &transport->saddr,
           &fl, sk);

 if (dst) {
  transport->pathmtu = dst_mtu(dst);
  dst_release(dst);
 } else
  transport->pathmtu = SCTP_DEFAULT_MAXSEGMENT;
}
