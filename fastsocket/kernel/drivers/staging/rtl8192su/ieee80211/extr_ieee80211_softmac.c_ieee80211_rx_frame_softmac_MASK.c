#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_stats {int /*<<< orphan*/  len; } ;
struct TYPE_5__ {int /*<<< orphan*/  bdHTInfoLen; int /*<<< orphan*/  bdHTInfoBuf; int /*<<< orphan*/  bdHTCapLen; int /*<<< orphan*/  bdHTCapBuf; } ;
struct ieee80211_network {TYPE_1__ bssht; } ;
struct ieee80211_hdr_3addr {int /*<<< orphan*/  addr2; int /*<<< orphan*/  frame_ctl; } ;
struct ieee80211_disassoc {int reason; } ;
struct TYPE_8__ {int /*<<< orphan*/  reassoc; int /*<<< orphan*/  rx_auth_rs_err; int /*<<< orphan*/  rx_auth_rs_ok; int /*<<< orphan*/  rx_ass_err; int /*<<< orphan*/  rx_ass_ok; } ;
struct TYPE_7__ {int /*<<< orphan*/  mode; } ;
struct ieee80211_device {int softmac_features; int assoc_id; int bHalfWirelessN24GMode; int is_roaming; int /*<<< orphan*/  associate_procedure_wq; int /*<<< orphan*/  wq; int /*<<< orphan*/  dev; int /*<<< orphan*/  (* LedControlHandler ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;TYPE_4__ softmac_stats; int /*<<< orphan*/  state; int /*<<< orphan*/  iw_mode; TYPE_3__ current_network; int /*<<< orphan*/  (* SetWirelessMode ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* GetNmodeSupportBySecCfg ) (int /*<<< orphan*/ ) ;TYPE_2__* pHTInfo; int /*<<< orphan*/  open_wep; int /*<<< orphan*/  AsocRetryCount; int /*<<< orphan*/  (* handle_assoc_response ) (int /*<<< orphan*/ ,struct ieee80211_assoc_response_frame*,struct ieee80211_network*) ;int /*<<< orphan*/  qos_support; int /*<<< orphan*/  proto_started; } ;
struct ieee80211_assoc_response_frame {int /*<<< orphan*/  info_element; } ;
struct TYPE_6__ {int IOTAction; int /*<<< orphan*/  PeerHTInfoBuf; int /*<<< orphan*/  PeerHTCapBuf; } ;

/* Variables and functions */
 int HT_IOT_ACT_PURE_N_MODE ; 
 int /*<<< orphan*/  IEEE80211_ASSOCIATING ; 
 int /*<<< orphan*/  IEEE80211_ASSOCIATING_AUTHENTICATED ; 
 int /*<<< orphan*/  IEEE80211_ASSOCIATING_AUTHENTICATING ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  IEEE80211_LINKED ; 
#define  IEEE80211_STYPE_ASSOC_REQ 136 
#define  IEEE80211_STYPE_ASSOC_RESP 135 
#define  IEEE80211_STYPE_AUTH 134 
#define  IEEE80211_STYPE_DEAUTH 133 
#define  IEEE80211_STYPE_DISASSOC 132 
#define  IEEE80211_STYPE_MANAGE_ACT 131 
#define  IEEE80211_STYPE_PROBE_REQ 130 
#define  IEEE80211_STYPE_REASSOC_REQ 129 
#define  IEEE80211_STYPE_REASSOC_RESP 128 
 int /*<<< orphan*/  IEEE_G ; 
 int /*<<< orphan*/  IEEE_N_24G ; 
 int IEEE_SOFTMAC_ASSOCIATE ; 
 int IEEE_SOFTMAC_PROBERS ; 
 int /*<<< orphan*/  IW_MODE_ADHOC ; 
 int /*<<< orphan*/  IW_MODE_INFRA ; 
 int /*<<< orphan*/  IW_MODE_MASTER ; 
 int /*<<< orphan*/  FUNC1 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  LED_CTL_START_TO_LINK ; 
 int /*<<< orphan*/  RT_ASOC_RETRY_LIMIT ; 
 int /*<<< orphan*/  FUNC2 (struct ieee80211_device*,int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (struct ieee80211_device*,struct sk_buff*,int*) ; 
 int FUNC5 (struct sk_buff*,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee80211_device*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee80211_device*) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee80211_device*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct ieee80211_network*,struct ieee80211_rx_stats*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee80211_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee80211_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee80211_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee80211_device*,struct sk_buff*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (struct ieee80211_network*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC18 (char*,...) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,struct ieee80211_assoc_response_frame*,struct ieee80211_network*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

inline int
FUNC25(struct ieee80211_device *ieee, struct sk_buff *skb,
			struct ieee80211_rx_stats *rx_stats, u16 type,
			u16 stype)
{
	struct ieee80211_hdr_3addr *header = (struct ieee80211_hdr_3addr *) skb->data;
	u16 errcode;
	u8* challenge;
	int chlen=0;
	int aid;
	struct ieee80211_assoc_response_frame *assoc_resp;
//	struct ieee80211_info_element *info_element;
	bool bSupportNmode = true, bHalfSupportNmode = false; //default support N mode, disable halfNmode

	if(!ieee->proto_started)
		return 0;

	switch (FUNC3(header->frame_ctl)) {

		case IEEE80211_STYPE_ASSOC_RESP:
		case IEEE80211_STYPE_REASSOC_RESP:

			FUNC0("received [RE]ASSOCIATION RESPONSE (%d)\n",
					FUNC3(header->frame_ctl));
			if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
				ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATED &&
				ieee->iw_mode == IW_MODE_INFRA){
				struct ieee80211_network network_resp;
				struct ieee80211_network *network = &network_resp;

				if (0 == (errcode=FUNC4(ieee,skb, &aid))){
					ieee->state=IEEE80211_LINKED;
					ieee->assoc_id = aid;
					ieee->softmac_stats.rx_ass_ok++;
					/* station support qos */
					/* Let the register setting defaultly with Legacy station */
					if(ieee->qos_support) {
						assoc_resp = (struct ieee80211_assoc_response_frame*)skb->data;
						FUNC17(network, 0, sizeof(*network));
						if (FUNC11(ieee,assoc_resp->info_element,\
									rx_stats->len - sizeof(*assoc_resp),\
									network,rx_stats)){
							return 1;
						}
						else
						{	//filling the PeerHTCap. //maybe not neccesary as we can get its info from current_network.
							FUNC16(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
							FUNC16(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
						}
						if (ieee->handle_assoc_response != NULL)
							ieee->handle_assoc_response(ieee->dev, (struct ieee80211_assoc_response_frame*)header, network);
					}
					FUNC7(ieee);
				} else {
					/* aid could not been allocated */
					ieee->softmac_stats.rx_ass_err++;
					FUNC18(
						"Association response status code 0x%x\n",
						errcode);
					FUNC0(
						"Association response status code 0x%x\n",
						errcode);
					if(ieee->AsocRetryCount < RT_ASOC_RETRY_LIMIT) {
						FUNC19(ieee->wq, &ieee->associate_procedure_wq);
					} else {
						FUNC6(ieee);
					}
				}
			}
			break;

		case IEEE80211_STYPE_ASSOC_REQ:
		case IEEE80211_STYPE_REASSOC_REQ:

			if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
				ieee->iw_mode == IW_MODE_MASTER)

				FUNC13(ieee, skb);
			break;

		case IEEE80211_STYPE_AUTH:

			if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE){
				if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING &&
				ieee->iw_mode == IW_MODE_INFRA){

						FUNC0("Received authentication response");

						if (0 == (errcode=FUNC5(skb, &challenge, &chlen))){
							if(ieee->open_wep || !challenge){
								ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
								ieee->softmac_stats.rx_auth_rs_ok++;
								if(!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))
								{
									if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
									{
												// WEP or TKIP encryption
										if(FUNC1(ieee))
										{
											bSupportNmode = true;
											bHalfSupportNmode = true;
										}
										else
										{
											bSupportNmode = false;
											bHalfSupportNmode = false;
										}
									FUNC18("==========>to link with AP using SEC(%d, %d)", bSupportNmode, bHalfSupportNmode);
									}
								}
								/* Dummy wirless mode setting to avoid encryption issue */
								if(bSupportNmode) {
									//N mode setting
									ieee->SetWirelessMode(ieee->dev, \
											ieee->current_network.mode);
								}else{
									//b/g mode setting
									/*TODO*/
									ieee->SetWirelessMode(ieee->dev, IEEE_G);
								}

								if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode == true)
								{
									FUNC18("===============>entern half N mode\n");
									ieee->bHalfWirelessN24GMode = true;
								}
								else
									ieee->bHalfWirelessN24GMode = false;

								FUNC8(ieee);
							}else{
								FUNC9(ieee, challenge, chlen);
							}
						}else{
							ieee->softmac_stats.rx_auth_rs_err++;
							FUNC0("Authentication respose status code 0x%x",errcode);

							FUNC18("Authentication respose status code 0x%x",errcode);
							FUNC6(ieee);
						}

					}else if (ieee->iw_mode == IW_MODE_MASTER){
						FUNC14(ieee, skb);
					}
				}
			break;

		case IEEE80211_STYPE_PROBE_REQ:

			if ((ieee->softmac_features & IEEE_SOFTMAC_PROBERS) &&
				((ieee->iw_mode == IW_MODE_ADHOC ||
				ieee->iw_mode == IW_MODE_MASTER) &&
				ieee->state == IEEE80211_LINKED)){
				FUNC15(ieee, skb);
			}
			break;

		case IEEE80211_STYPE_DISASSOC:
		case IEEE80211_STYPE_DEAUTH:
			/* FIXME for now repeat all the association procedure
			* both for disassociation and deauthentication
			*/
			if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
				ieee->state == IEEE80211_LINKED &&
				ieee->iw_mode == IW_MODE_INFRA){
				FUNC18("==========>received disassoc/deauth(%x) frame, reason code:%x\n",FUNC3(header->frame_ctl), ((struct ieee80211_disassoc*)skb->data)->reason);
				ieee->state = IEEE80211_ASSOCIATING;
				ieee->softmac_stats.reassoc++;
				ieee->is_roaming = true;
				FUNC10(ieee);
			//	notify_wx_assoc_event(ieee);
				//HTSetConnectBwMode(ieee, HT_CHANNEL_WIDTH_20, HT_EXTCHNL_OFFSET_NO_EXT);
				FUNC2(ieee, header->addr2);
				if(ieee->LedControlHandler != NULL)
				        ieee->LedControlHandler(ieee->dev, LED_CTL_START_TO_LINK); //added by amy for LED 090318
				FUNC19(ieee->wq, &ieee->associate_procedure_wq);
			}
			break;
		case IEEE80211_STYPE_MANAGE_ACT:
			FUNC12(ieee,skb);
			break;
		default:
			return -1;
			break;
	}

	//dev_kfree_skb_any(skb);
	return 0;
}