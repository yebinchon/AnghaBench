
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int data_unknown; int cfack_cfpoll; int cfpoll; int cfack; int null; int data__cfack_cfpoll; int data_cfpoll; int data_cfack; int dataonly; int data; int ctl_unknown; int cfendcfack; int cfend; int ack; int cts; int rts; int pspoll; int ctl; int mgmt_unknown; int deauthen; int authen; int disassoc; int atim; int beacon; int proberesp; int probereq; int reassocresp; int reassocreq; int assocresp; int assocreq; int mgmt; } ;
struct TYPE_7__ {TYPE_2__ rx; TYPE_1__* netdev; } ;
typedef TYPE_3__ wlandevice_t ;
typedef int u16 ;
struct TYPE_5__ {int flags; } ;


 int IFF_ALLMULTI ;
 int IFF_PROMISC ;
 int WLAN_GET_FC_FSTYPE (int) ;
 int WLAN_GET_FC_FTYPE (int) ;
 int pr_debug (char*,...) ;

__attribute__((used)) static int p80211_rx_typedrop(wlandevice_t *wlandev, u16 fc)
{
 u16 ftype;
 u16 fstype;
 int drop = 0;

 ftype = WLAN_GET_FC_FTYPE(fc);
 fstype = WLAN_GET_FC_FSTYPE(fc);



 switch (ftype) {
 case 128:
  if ((wlandev->netdev->flags & IFF_PROMISC) ||
      (wlandev->netdev->flags & IFF_ALLMULTI)) {
   drop = 1;
   break;
  }
  pr_debug("rx'd mgmt:\n");
  wlandev->rx.mgmt++;
  switch (fstype) {
  case 154:

   wlandev->rx.assocreq++;
   break;
  case 153:

   wlandev->rx.assocresp++;
   break;
  case 133:

   wlandev->rx.reassocreq++;
   break;
  case 132:

   wlandev->rx.reassocresp++;
   break;
  case 136:

   wlandev->rx.probereq++;
   break;
  case 135:

   wlandev->rx.proberesp++;
   break;
  case 150:

   wlandev->rx.beacon++;
   break;
  case 152:

   wlandev->rx.atim++;
   break;
  case 138:

   wlandev->rx.disassoc++;
   break;
  case 151:

   wlandev->rx.authen++;
   break;
  case 139:

   wlandev->rx.deauthen++;
   break;
  default:

   wlandev->rx.mgmt_unknown++;
   break;
  }

  drop = 2;
  break;

 case 130:
  if ((wlandev->netdev->flags & IFF_PROMISC) ||
      (wlandev->netdev->flags & IFF_ALLMULTI)) {
   drop = 1;
   break;
  }
  pr_debug("rx'd ctl:\n");
  wlandev->rx.ctl++;
  switch (fstype) {
  case 134:

   wlandev->rx.pspoll++;
   break;
  case 131:

   wlandev->rx.rts++;
   break;
  case 144:

   wlandev->rx.cts++;
   break;
  case 155:

   wlandev->rx.ack++;
   break;
  case 147:

   wlandev->rx.cfend++;
   break;
  case 146:

   wlandev->rx.cfendcfack++;
   break;
  default:

   wlandev->rx.ctl_unknown++;
   break;
  }

  drop = 2;
  break;

 case 129:
  wlandev->rx.data++;
  switch (fstype) {
  case 143:
   wlandev->rx.dataonly++;
   break;
  case 142:
   wlandev->rx.data_cfack++;
   break;
  case 140:
   wlandev->rx.data_cfpoll++;
   break;
  case 141:
   wlandev->rx.data__cfack_cfpoll++;
   break;
  case 137:
   pr_debug("rx'd data:null\n");
   wlandev->rx.null++;
   break;
  case 149:
   pr_debug("rx'd data:cfack\n");
   wlandev->rx.cfack++;
   break;
  case 145:
   pr_debug("rx'd data:cfpoll\n");
   wlandev->rx.cfpoll++;
   break;
  case 148:
   pr_debug("rx'd data:cfack_cfpoll\n");
   wlandev->rx.cfack_cfpoll++;
   break;
  default:

   wlandev->rx.data_unknown++;
   break;
  }

  break;
 }
 return drop;
}
