
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udphdr {int dummy; } ;
struct net_device {int mtu; } ;
struct iphdr {int dummy; } ;


 int ENODEV ;
 int IP_VS_DBG (int,char*,int) ;
 int IP_VS_STATE_BACKUP ;
 int IP_VS_STATE_MASTER ;
 int MAX_CONNS_PER_SYNCBUFF ;
 int SIMPLE_CONN_SIZE ;
 int SYNC_MESG_HEADER_LEN ;
 struct net_device* __dev_get_by_name (int *,int ) ;
 int init_net ;
 int ip_vs_backup_mcast_ifn ;
 int ip_vs_master_mcast_ifn ;
 int min (int,int ) ;
 int sync_recv_mesg_maxlen ;
 int sync_send_mesg_maxlen ;

__attribute__((used)) static int set_sync_mesg_maxlen(int sync_state)
{
 struct net_device *dev;
 int num;

 if (sync_state == IP_VS_STATE_MASTER) {
  if ((dev = __dev_get_by_name(&init_net, ip_vs_master_mcast_ifn)) == ((void*)0))
   return -ENODEV;

  num = (dev->mtu - sizeof(struct iphdr) -
         sizeof(struct udphdr) -
         SYNC_MESG_HEADER_LEN - 20) / SIMPLE_CONN_SIZE;
  sync_send_mesg_maxlen = SYNC_MESG_HEADER_LEN +
   SIMPLE_CONN_SIZE * min(num, MAX_CONNS_PER_SYNCBUFF);
  IP_VS_DBG(7, "setting the maximum length of sync sending "
     "message %d.\n", sync_send_mesg_maxlen);
 } else if (sync_state == IP_VS_STATE_BACKUP) {
  if ((dev = __dev_get_by_name(&init_net, ip_vs_backup_mcast_ifn)) == ((void*)0))
   return -ENODEV;

  sync_recv_mesg_maxlen = dev->mtu -
   sizeof(struct iphdr) - sizeof(struct udphdr);
  IP_VS_DBG(7, "setting the maximum length of sync receiving "
     "message %d.\n", sync_recv_mesg_maxlen);
 }

 return 0;
}
