
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct wlp_tx_hdr {int dummy; } ;
struct wlp_rx_hdr {int dummy; } ;
struct net_device {int mtu; } ;
typedef int i1480u_all_hdrs ;


 int ERANGE ;
 int ETH_HLEN ;

int i1480u_change_mtu(struct net_device *net_dev, int mtu)
{
 static union {
  struct wlp_tx_hdr tx;
  struct wlp_rx_hdr rx;
 } i1480u_all_hdrs;

 if (mtu < ETH_HLEN)
  return -ERANGE;
 if (mtu > 4000 - sizeof(i1480u_all_hdrs))
  return -ERANGE;
 net_dev->mtu = mtu;
 return 0;
}
