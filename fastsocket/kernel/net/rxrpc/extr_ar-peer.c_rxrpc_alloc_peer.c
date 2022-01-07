
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct udphdr {int dummy; } ;
struct TYPE_2__ {scalar_t__ family; } ;
struct sockaddr_rxrpc {int transport_type; TYPE_1__ transport; } ;
struct rxrpc_peer {int hdrsize; scalar_t__ mtu; scalar_t__ maxdata; scalar_t__ if_mtu; int srx; int debug_id; int usage; int lock; int error_targets; int link; int destroyer; } ;
struct rxrpc_header {int dummy; } ;
struct iphdr {int dummy; } ;
typedef int gfp_t ;


 scalar_t__ AF_INET ;
 int BUG () ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int *) ;

 int _enter (char*) ;
 int _leave (char*,struct rxrpc_peer*) ;
 int atomic_inc_return (int *) ;
 int atomic_set (int *,int) ;
 struct rxrpc_peer* kzalloc (int,int ) ;
 int memcpy (int *,struct sockaddr_rxrpc*,int) ;
 int rxrpc_assess_MTU_size (struct rxrpc_peer*) ;
 int rxrpc_debug_id ;
 int rxrpc_destroy_peer ;
 int spin_lock_init (int *) ;

__attribute__((used)) static struct rxrpc_peer *rxrpc_alloc_peer(struct sockaddr_rxrpc *srx,
        gfp_t gfp)
{
 struct rxrpc_peer *peer;

 _enter("");

 peer = kzalloc(sizeof(struct rxrpc_peer), gfp);
 if (peer) {
  INIT_WORK(&peer->destroyer, &rxrpc_destroy_peer);
  INIT_LIST_HEAD(&peer->link);
  INIT_LIST_HEAD(&peer->error_targets);
  spin_lock_init(&peer->lock);
  atomic_set(&peer->usage, 1);
  peer->debug_id = atomic_inc_return(&rxrpc_debug_id);
  memcpy(&peer->srx, srx, sizeof(*srx));

  rxrpc_assess_MTU_size(peer);
  peer->mtu = peer->if_mtu;

  if (srx->transport.family == AF_INET) {
   peer->hdrsize = sizeof(struct iphdr);
   switch (srx->transport_type) {
   case 128:
    peer->hdrsize += sizeof(struct udphdr);
    break;
   default:
    BUG();
    break;
   }
  } else {
   BUG();
  }

  peer->hdrsize += sizeof(struct rxrpc_header);
  peer->maxdata = peer->mtu - peer->hdrsize;
 }

 _leave(" = %p", peer);
 return peer;
}
