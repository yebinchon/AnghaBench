
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


struct TYPE_16__ {int * bssid; } ;
struct TYPE_18__ {int type; int p2p; int * addr; TYPE_7__ bss_conf; } ;
struct TYPE_14__ {int * bssid; } ;
struct TYPE_13__ {int * bssid; } ;
struct TYPE_11__ {int bc_buf; } ;
struct TYPE_12__ {int vlans; TYPE_2__ ps; } ;
struct TYPE_17__ {int mntr_flags; TYPE_5__ ibss; TYPE_4__ mgd; TYPE_3__ ap; } ;
struct TYPE_10__ {int iftype; } ;
struct ieee80211_sub_if_data {int control_port_no_encrypt; TYPE_9__ vif; TYPE_8__ u; TYPE_6__* dev; int recalc_smps; int work; int skb_queue; scalar_t__ noack_map; int control_port_protocol; TYPE_1__ wdev; } ;
typedef enum nl80211_iftype { ____Placeholder_nl80211_iftype } nl80211_iftype ;
struct TYPE_15__ {int * netdev_ops; int type; } ;


 int ARPHRD_ETHER ;
 int ARPHRD_IEEE80211_RADIOTAP ;
 int BUG () ;
 int ETH_P_PAE ;
 int INIT_LIST_HEAD (int *) ;
 int INIT_WORK (int *,int ) ;
 int MONITOR_FLAG_CONTROL ;
 int MONITOR_FLAG_OTHER_BSS ;
 int cpu_to_be16 (int ) ;
 int ieee80211_dataif_ops ;
 int ieee80211_debugfs_add_netdev (struct ieee80211_sub_if_data*) ;
 int ieee80211_ibss_setup_sdata (struct ieee80211_sub_if_data*) ;
 int ieee80211_iface_work ;
 int ieee80211_mesh_init_sdata (struct ieee80211_sub_if_data*) ;
 int ieee80211_monitorif_ops ;
 int ieee80211_recalc_smps_work ;
 int ieee80211_sta_setup_sdata (struct ieee80211_sub_if_data*) ;
 int ieee80211_vif_is_mesh (TYPE_9__*) ;
 int memset (TYPE_8__*,int ,int) ;
 int skb_queue_head_init (int *) ;

__attribute__((used)) static void ieee80211_setup_sdata(struct ieee80211_sub_if_data *sdata,
      enum nl80211_iftype type)
{

 memset(&sdata->u, 0, sizeof(sdata->u));


 sdata->vif.type = type;
 sdata->vif.p2p = 0;
 sdata->wdev.iftype = type;

 sdata->control_port_protocol = cpu_to_be16(ETH_P_PAE);
 sdata->control_port_no_encrypt = 0;

 sdata->noack_map = 0;


 if (sdata->dev) {
  sdata->dev->netdev_ops = &ieee80211_dataif_ops;
  sdata->dev->type = ARPHRD_ETHER;
 }

 skb_queue_head_init(&sdata->skb_queue);
 INIT_WORK(&sdata->work, ieee80211_iface_work);
 INIT_WORK(&sdata->recalc_smps, ieee80211_recalc_smps_work);

 switch (type) {
 case 132:
  type = 138;
  sdata->vif.type = type;
  sdata->vif.p2p = 1;

 case 138:
  skb_queue_head_init(&sdata->u.ap.ps.bc_buf);
  INIT_LIST_HEAD(&sdata->u.ap.vlans);
  sdata->vif.bss_conf.bssid = sdata->vif.addr;
  break;
 case 134:
  type = 131;
  sdata->vif.type = type;
  sdata->vif.p2p = 1;

 case 131:
  sdata->vif.bss_conf.bssid = sdata->u.mgd.bssid;
  ieee80211_sta_setup_sdata(sdata);
  break;
 case 139:
  sdata->vif.bss_conf.bssid = sdata->u.ibss.bssid;
  ieee80211_ibss_setup_sdata(sdata);
  break;
 case 136:
  if (ieee80211_vif_is_mesh(&sdata->vif))
   ieee80211_mesh_init_sdata(sdata);
  break;
 case 135:
  sdata->dev->type = ARPHRD_IEEE80211_RADIOTAP;
  sdata->dev->netdev_ops = &ieee80211_monitorif_ops;
  sdata->u.mntr_flags = MONITOR_FLAG_CONTROL |
          MONITOR_FLAG_OTHER_BSS;
  break;
 case 129:
  sdata->vif.bss_conf.bssid = ((void*)0);
  break;
 case 137:
  break;
 case 133:
  sdata->vif.bss_conf.bssid = sdata->vif.addr;
  break;
 case 130:
 case 128:
  BUG();
  break;
 }

 ieee80211_debugfs_add_netdev(sdata);
}
