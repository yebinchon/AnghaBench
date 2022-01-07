
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int spy_number; TYPE_1__* spy_stat; int * spy_address; } ;
typedef TYPE_2__ wlandevice_t ;
struct TYPE_8__ {scalar_t__ signal; scalar_t__ noise; } ;
typedef TYPE_3__ p80211_rxmeta_t ;
struct TYPE_6__ {scalar_t__ level; scalar_t__ noise; scalar_t__ qual; int updated; } ;


 int ETH_ALEN ;
 int memcmp (int ,char*,int ) ;
 int memcpy (int ,char*,int ) ;

__attribute__((used)) static void orinoco_spy_gather(wlandevice_t *wlandev, char *mac,
          p80211_rxmeta_t *rxmeta)
{
 int i;




 for (i = 0; i < wlandev->spy_number; i++) {

  if (!memcmp(wlandev->spy_address[i], mac, ETH_ALEN)) {
   memcpy(wlandev->spy_address[i], mac, ETH_ALEN);
   wlandev->spy_stat[i].level = rxmeta->signal;
   wlandev->spy_stat[i].noise = rxmeta->noise;
   wlandev->spy_stat[i].qual =
       (rxmeta->signal >
        rxmeta->noise) ? (rxmeta->signal -
            rxmeta->noise) : 0;
   wlandev->spy_stat[i].updated = 0x7;
  }
 }
}
