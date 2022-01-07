
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_9__ ;
typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_10__ {int s_addr; } ;
struct TYPE_11__ {TYPE_1__ sin_addr; } ;
struct TYPE_12__ {int family; TYPE_2__ sin; } ;
struct TYPE_13__ {TYPE_3__ transport; } ;
struct rxrpc_peer {int if_mtu; TYPE_4__ srx; } ;
struct TYPE_18__ {int dst; } ;
struct rtable {TYPE_9__ u; } ;
struct TYPE_16__ {void* dport; void* sport; } ;
struct TYPE_17__ {TYPE_7__ ports; } ;
struct TYPE_14__ {int tos; int daddr; int saddr; } ;
struct TYPE_15__ {TYPE_5__ ip4_u; } ;
struct flowi {TYPE_8__ uli_u; TYPE_6__ nl_u; int proto; int oif; } ;
typedef int fl ;



 int BUG () ;
 int IPPROTO_UDP ;
 int _leave (char*,int) ;
 int dst_mtu (int *) ;
 int dst_release (int *) ;
 void* htons (int) ;
 int init_net ;
 int ip_route_output_key (int *,struct rtable**,struct flowi*) ;
 int memset (struct flowi*,int ,int) ;

__attribute__((used)) static void rxrpc_assess_MTU_size(struct rxrpc_peer *peer)
{
 struct rtable *rt;
 struct flowi fl;
 int ret;

 peer->if_mtu = 1500;

 memset(&fl, 0, sizeof(fl));

 switch (peer->srx.transport.family) {
 case 128:
  fl.oif = 0;
  fl.proto = IPPROTO_UDP,
  fl.nl_u.ip4_u.saddr = 0;
  fl.nl_u.ip4_u.daddr = peer->srx.transport.sin.sin_addr.s_addr;
  fl.nl_u.ip4_u.tos = 0;

  fl.uli_u.ports.sport = htons(7001);
  fl.uli_u.ports.dport = htons(7000);
  break;
 default:
  BUG();
 }

 ret = ip_route_output_key(&init_net, &rt, &fl);
 if (ret < 0) {
  _leave(" [route err %d]", ret);
  return;
 }

 peer->if_mtu = dst_mtu(&rt->u.dst);
 dst_release(&rt->u.dst);

 _leave(" [if_mtu %u]", peer->if_mtu);
}
