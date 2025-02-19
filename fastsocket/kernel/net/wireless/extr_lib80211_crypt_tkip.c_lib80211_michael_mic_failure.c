
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int wrqu ;
struct TYPE_4__ {int length; } ;
struct TYPE_3__ {int sa_data; int sa_family; } ;
union iwreq_data {int flags; TYPE_2__ data; TYPE_1__ src_addr; } ;
struct net_device {int dummy; } ;
struct iw_michaelmicfailure {int flags; TYPE_2__ data; TYPE_1__ src_addr; } ;
struct ieee80211_hdr {int* addr1; int addr2; } ;
typedef int ev ;


 int ARPHRD_ETHER ;
 int ETH_ALEN ;
 int IWEVMICHAELMICFAILURE ;
 int IW_MICFAILURE_GROUP ;
 int IW_MICFAILURE_KEY_ID ;
 int IW_MICFAILURE_PAIRWISE ;
 int memcpy (int ,int ,int ) ;
 int memset (union iwreq_data*,int ,int) ;
 int wireless_send_event (struct net_device*,int ,union iwreq_data*,char*) ;

__attribute__((used)) static void lib80211_michael_mic_failure(struct net_device *dev,
       struct ieee80211_hdr *hdr,
       int keyidx)
{
 union iwreq_data wrqu;
 struct iw_michaelmicfailure ev;


 memset(&ev, 0, sizeof(ev));
 ev.flags = keyidx & IW_MICFAILURE_KEY_ID;
 if (hdr->addr1[0] & 0x01)
  ev.flags |= IW_MICFAILURE_GROUP;
 else
  ev.flags |= IW_MICFAILURE_PAIRWISE;
 ev.src_addr.sa_family = ARPHRD_ETHER;
 memcpy(ev.src_addr.sa_data, hdr->addr2, ETH_ALEN);
 memset(&wrqu, 0, sizeof(wrqu));
 wrqu.data.length = sizeof(ev);
 wireless_send_event(dev, IWEVMICHAELMICFAILURE, &wrqu, (char *)&ev);
}
