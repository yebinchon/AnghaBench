#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ req_ie_len; scalar_t__ resp_ie_len; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ viawget_wpa_header ;
struct TYPE_10__ {int /*<<< orphan*/  cb; int /*<<< orphan*/  protocol; int /*<<< orphan*/  pkt_type; int /*<<< orphan*/  dev; scalar_t__ data; } ;
struct TYPE_9__ {scalar_t__ bWPADEVUp; scalar_t__ rx_buf_sz; TYPE_3__* skb; int /*<<< orphan*/  wpadev; } ;
typedef  TYPE_2__* PSDevice ;
typedef  scalar_t__ BOOL ;

/* Variables and functions */
 int /*<<< orphan*/  ETH_P_802_2 ; 
 int HZ ; 
 int /*<<< orphan*/  PACKET_HOST ; 
 int /*<<< orphan*/  TASK_UNINTERRUPTIBLE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  VIAWGET_DEVICECLOSE_MSG ; 
 TYPE_3__* FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_3__*) ; 

__attribute__((used)) static BOOL FUNC8(PSDevice pDevice)
{
  viawget_wpa_header *wpahdr;
  int ii=0;
 // wait_queue_head_t	Set_wait;
  //send device close to wpa_supplicnat layer
    if (pDevice->bWPADEVUp==TRUE) {
                 wpahdr = (viawget_wpa_header *)pDevice->skb->data;
                 wpahdr->type = VIAWGET_DEVICECLOSE_MSG;
                 wpahdr->resp_ie_len = 0;
                 wpahdr->req_ie_len = 0;
                 FUNC6(pDevice->skb, sizeof(viawget_wpa_header));
                 pDevice->skb->dev = pDevice->wpadev;
		 FUNC7(pDevice->skb);
                 pDevice->skb->pkt_type = PACKET_HOST;
                 pDevice->skb->protocol = FUNC1(ETH_P_802_2);
                 FUNC2(pDevice->skb->cb, 0, sizeof(pDevice->skb->cb));
                 FUNC3(pDevice->skb);
                 pDevice->skb = FUNC0((int)pDevice->rx_buf_sz);

 //wait release WPADEV
              //    init_waitqueue_head(&Set_wait);
              //    wait_event_timeout(Set_wait, ((pDevice->wpadev==NULL)&&(pDevice->skb == NULL)),5*HZ);    //1s wait
              while(pDevice->bWPADEVUp==TRUE) {
	        FUNC5(TASK_UNINTERRUPTIBLE);
                 FUNC4 (HZ/20);          //wait 50ms
                 ii++;
	        if(ii>20)
		  break;
              }
           };
    return TRUE;
}