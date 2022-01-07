
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
typedef int u16 ;
struct mcast_address {struct mcast_address* next; int address; } ;
struct ether_header {int* ether_dhost; } ;
struct TYPE_2__ {int multicast; } ;
struct adapter {int macopts; int rcv_unicasts; TYPE_1__ stats; int rcv_multicasts; struct mcast_address* mcastaddrs; int rcv_broadcasts; } ;


 int ETHER_EQ_ADDR (int ,int*,int) ;
 int MAC_ALLMCAST ;
 int MAC_BCAST ;
 int MAC_DIRECTED ;
 int MAC_MCAST ;
 int MAC_PROMISC ;

__attribute__((used)) static bool slic_mac_filter(struct adapter *adapter,
   struct ether_header *ether_frame)
{
 u32 opts = adapter->macopts;
 u32 *dhost4 = (u32 *)&ether_frame->ether_dhost[0];
 u16 *dhost2 = (u16 *)&ether_frame->ether_dhost[4];
 bool equaladdr;

 if (opts & MAC_PROMISC)
  return 1;

 if ((*dhost4 == 0xFFFFFFFF) && (*dhost2 == 0xFFFF)) {
  if (opts & MAC_BCAST) {
   adapter->rcv_broadcasts++;
   return 1;
  } else {
   return 0;
  }
 }

 if (ether_frame->ether_dhost[0] & 0x01) {
  if (opts & MAC_ALLMCAST) {
   adapter->rcv_multicasts++;
   adapter->stats.multicast++;
   return 1;
  }
  if (opts & MAC_MCAST) {
   struct mcast_address *mcaddr = adapter->mcastaddrs;

   while (mcaddr) {
    ETHER_EQ_ADDR(mcaddr->address,
           ether_frame->ether_dhost,
           equaladdr);
    if (equaladdr) {
     adapter->rcv_multicasts++;
     adapter->stats.multicast++;
     return 1;
    }
    mcaddr = mcaddr->next;
   }
   return 0;
  } else {
   return 0;
  }
 }
 if (opts & MAC_DIRECTED) {
  adapter->rcv_unicasts++;
  return 1;
 }
 return 0;

}
