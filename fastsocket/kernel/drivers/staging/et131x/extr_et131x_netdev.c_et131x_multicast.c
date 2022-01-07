
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint32_t ;
struct net_device {int flags; int mc_count; struct dev_mc_list* mc_list; } ;
struct et131x_adapter {size_t PacketFilter; int MCAddressCount; int Lock; int * MCList; } ;
struct dev_mc_list {int dmi_addr; } ;


 size_t ET131X_PACKET_TYPE_ALL_MULTICAST ;
 size_t ET131X_PACKET_TYPE_MULTICAST ;
 size_t ET131X_PACKET_TYPE_PROMISCUOUS ;
 int ETH_ALEN ;
 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int NIC_MAX_MCAST_LIST ;
 int et131x_set_packet_filter (struct et131x_adapter*) ;
 int memcpy (int ,int ,int ) ;
 struct et131x_adapter* netdev_priv (struct net_device*) ;
 int spin_lock_irqsave (int *,unsigned long) ;
 int spin_unlock_irqrestore (int *,unsigned long) ;

void et131x_multicast(struct net_device *netdev)
{
 struct et131x_adapter *adapter = netdev_priv(netdev);
 uint32_t PacketFilter = 0;
 uint32_t count;
 unsigned long flags;
 struct dev_mc_list *mclist = netdev->mc_list;

 spin_lock_irqsave(&adapter->Lock, flags);





 PacketFilter = adapter->PacketFilter;






 PacketFilter &= ~ET131X_PACKET_TYPE_MULTICAST;





 if (netdev->flags & IFF_PROMISC) {
  adapter->PacketFilter |= ET131X_PACKET_TYPE_PROMISCUOUS;
 } else {
  adapter->PacketFilter &= ~ET131X_PACKET_TYPE_PROMISCUOUS;
 }

 if (netdev->flags & IFF_ALLMULTI) {
  adapter->PacketFilter |= ET131X_PACKET_TYPE_ALL_MULTICAST;
 }

 if (netdev->mc_count > NIC_MAX_MCAST_LIST) {
  adapter->PacketFilter |= ET131X_PACKET_TYPE_ALL_MULTICAST;
 }

 if (netdev->mc_count < 1) {
  adapter->PacketFilter &= ~ET131X_PACKET_TYPE_ALL_MULTICAST;
  adapter->PacketFilter &= ~ET131X_PACKET_TYPE_MULTICAST;
 } else {
  adapter->PacketFilter |= ET131X_PACKET_TYPE_MULTICAST;
 }


 adapter->MCAddressCount = netdev->mc_count;

 if (netdev->mc_count) {
  count = netdev->mc_count - 1;
  memcpy(adapter->MCList[count], mclist->dmi_addr, ETH_ALEN);
 }







 if (PacketFilter != adapter->PacketFilter) {

  et131x_set_packet_filter(adapter);
 }
 spin_unlock_irqrestore(&adapter->Lock, flags);
}
