
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct sk_buff {int dummy; } ;
struct rxrpc_peer {unsigned int maxdata; scalar_t__ mtu; int lock; scalar_t__ hdrsize; } ;
struct rxrpc_call {TYPE_2__* conn; } ;
struct rxrpc_ackinfo {int maxMTU; int rxMTU; int jumbo_max; int rwind; } ;
typedef int ackinfo ;
struct TYPE_4__ {TYPE_1__* trans; } ;
struct TYPE_3__ {struct rxrpc_peer* peer; } ;


 int _leave (char*) ;
 int _net (char*,scalar_t__,unsigned int) ;
 int _proto (char*,unsigned int,int ,int ,int ,int ) ;
 unsigned int min (int ,int ) ;
 int ntohl (int ) ;
 scalar_t__ skb_copy_bits (struct sk_buff*,int,struct rxrpc_ackinfo*,int) ;
 int spin_lock_bh (int *) ;
 int spin_unlock_bh (int *) ;

__attribute__((used)) static void rxrpc_extract_ackinfo(struct rxrpc_call *call, struct sk_buff *skb,
      unsigned latest, int nAcks)
{
 struct rxrpc_ackinfo ackinfo;
 struct rxrpc_peer *peer;
 unsigned mtu;

 if (skb_copy_bits(skb, nAcks + 3, &ackinfo, sizeof(ackinfo)) < 0) {
  _leave(" [no ackinfo]");
  return;
 }

 _proto("Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }",
        latest,
        ntohl(ackinfo.rxMTU), ntohl(ackinfo.maxMTU),
        ntohl(ackinfo.rwind), ntohl(ackinfo.jumbo_max));

 mtu = min(ntohl(ackinfo.rxMTU), ntohl(ackinfo.maxMTU));

 peer = call->conn->trans->peer;
 if (mtu < peer->maxdata) {
  spin_lock_bh(&peer->lock);
  peer->maxdata = mtu;
  peer->mtu = mtu + peer->hdrsize;
  spin_unlock_bh(&peer->lock);
  _net("Net MTU %u (maxdata %u)", peer->mtu, peer->maxdata);
 }
}
