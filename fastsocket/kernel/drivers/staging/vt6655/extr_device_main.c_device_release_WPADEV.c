
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {scalar_t__ req_ie_len; scalar_t__ resp_ie_len; int type; } ;
typedef TYPE_1__ viawget_wpa_header ;
struct TYPE_10__ {int cb; int protocol; int pkt_type; int dev; scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ bWPADEVUp; scalar_t__ rx_buf_sz; TYPE_3__* skb; int wpadev; } ;
typedef TYPE_2__* PSDevice ;
typedef scalar_t__ BOOL ;


 int ETH_P_802_2 ;
 int HZ ;
 int PACKET_HOST ;
 int TASK_UNINTERRUPTIBLE ;
 scalar_t__ TRUE ;
 int VIAWGET_DEVICECLOSE_MSG ;
 TYPE_3__* dev_alloc_skb (int) ;
 int htons (int ) ;
 int memset (int ,int ,int) ;
 int netif_rx (TYPE_3__*) ;
 int schedule_timeout (int) ;
 int set_current_state (int ) ;
 int skb_put (TYPE_3__*,int) ;
 int skb_reset_mac_header (TYPE_3__*) ;

__attribute__((used)) static BOOL device_release_WPADEV(PSDevice pDevice)
{
  viawget_wpa_header *wpahdr;
  int ii=0;


    if (pDevice->bWPADEVUp==TRUE) {
                 wpahdr = (viawget_wpa_header *)pDevice->skb->data;
                 wpahdr->type = VIAWGET_DEVICECLOSE_MSG;
                 wpahdr->resp_ie_len = 0;
                 wpahdr->req_ie_len = 0;
                 skb_put(pDevice->skb, sizeof(viawget_wpa_header));
                 pDevice->skb->dev = pDevice->wpadev;
   skb_reset_mac_header(pDevice->skb);
                 pDevice->skb->pkt_type = PACKET_HOST;
                 pDevice->skb->protocol = htons(ETH_P_802_2);
                 memset(pDevice->skb->cb, 0, sizeof(pDevice->skb->cb));
                 netif_rx(pDevice->skb);
                 pDevice->skb = dev_alloc_skb((int)pDevice->rx_buf_sz);




              while((pDevice->bWPADEVUp==TRUE)) {
         set_current_state(TASK_UNINTERRUPTIBLE);
                 schedule_timeout (HZ/20);
                 ii++;
         if(ii>20)
    break;
              }
           };
    return TRUE;
}
