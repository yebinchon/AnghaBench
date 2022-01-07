
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct sk_buff {scalar_t__ data; } ;
struct ieee80211_rx_stats {int len; } ;
struct TYPE_5__ {int bdHTInfoLen; int bdHTInfoBuf; int bdHTCapLen; int bdHTCapBuf; } ;
struct ieee80211_network {TYPE_1__ bssht; } ;
struct ieee80211_hdr_3addr {int addr2; int frame_ctl; } ;
struct ieee80211_disassoc {int reason; } ;
struct TYPE_8__ {int reassoc; int rx_auth_rs_err; int rx_auth_rs_ok; int rx_ass_err; int rx_ass_ok; } ;
struct TYPE_7__ {int mode; } ;
struct ieee80211_device {int softmac_features; int assoc_id; int bHalfWirelessN24GMode; int is_roaming; int associate_procedure_wq; int wq; int dev; int (* LedControlHandler ) (int ,int ) ;TYPE_4__ softmac_stats; int state; int iw_mode; TYPE_3__ current_network; int (* SetWirelessMode ) (int ,int ) ;int (* GetNmodeSupportBySecCfg ) (int ) ;TYPE_2__* pHTInfo; int open_wep; int AsocRetryCount; int (* handle_assoc_response ) (int ,struct ieee80211_assoc_response_frame*,struct ieee80211_network*) ;int qos_support; int proto_started; } ;
struct ieee80211_assoc_response_frame {int info_element; } ;
struct TYPE_6__ {int IOTAction; int PeerHTInfoBuf; int PeerHTCapBuf; } ;


 int HT_IOT_ACT_PURE_N_MODE ;
 int IEEE80211_ASSOCIATING ;
 int IEEE80211_ASSOCIATING_AUTHENTICATED ;
 int IEEE80211_ASSOCIATING_AUTHENTICATING ;
 int IEEE80211_DEBUG_MGMT (char*,...) ;
 int IEEE80211_LINKED ;
 int IEEE_G ;
 int IEEE_N_24G ;
 int IEEE_SOFTMAC_ASSOCIATE ;
 int IEEE_SOFTMAC_PROBERS ;
 int IW_MODE_ADHOC ;
 int IW_MODE_INFRA ;
 int IW_MODE_MASTER ;
 int IsHTHalfNmodeAPs (struct ieee80211_device*) ;
 int LED_CTL_START_TO_LINK ;
 int RT_ASOC_RETRY_LIMIT ;
 int RemovePeerTS (struct ieee80211_device*,int ) ;
 int WLAN_FC_GET_STYPE (int ) ;
 int assoc_parse (struct ieee80211_device*,struct sk_buff*,int*) ;
 int auth_parse (struct sk_buff*,int **,int*) ;
 int ieee80211_associate_abort (struct ieee80211_device*) ;
 int ieee80211_associate_complete (struct ieee80211_device*) ;
 int ieee80211_associate_step2 (struct ieee80211_device*) ;
 int ieee80211_auth_challenge (struct ieee80211_device*,int *,int) ;
 int ieee80211_disassociate (struct ieee80211_device*) ;
 int ieee80211_parse_info_param (struct ieee80211_device*,int ,int ,struct ieee80211_network*,struct ieee80211_rx_stats*) ;
 int ieee80211_process_action (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_assoc_rq (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_auth_rq (struct ieee80211_device*,struct sk_buff*) ;
 int ieee80211_rx_probe_rq (struct ieee80211_device*,struct sk_buff*) ;
 int memcpy (int ,int ,int ) ;
 int memset (struct ieee80211_network*,int ,int) ;
 int printk (char*,...) ;
 int queue_work (int ,int *) ;
 int stub1 (int ,struct ieee80211_assoc_response_frame*,struct ieee80211_network*) ;
 int stub2 (int ) ;
 int stub3 (int ,int ) ;
 int stub4 (int ,int ) ;
 int stub5 (int ,int ) ;

inline int
ieee80211_rx_frame_softmac(struct ieee80211_device *ieee, struct sk_buff *skb,
   struct ieee80211_rx_stats *rx_stats, u16 type,
   u16 stype)
{
 struct ieee80211_hdr_3addr *header = (struct ieee80211_hdr_3addr *) skb->data;
 u16 errcode;
 u8* challenge;
 int chlen=0;
 int aid;
 struct ieee80211_assoc_response_frame *assoc_resp;

 bool bSupportNmode = 1, bHalfSupportNmode = 0;

 if(!ieee->proto_started)
  return 0;

 switch (WLAN_FC_GET_STYPE(header->frame_ctl)) {

  case 135:
  case 128:

   IEEE80211_DEBUG_MGMT("received [RE]ASSOCIATION RESPONSE (%d)\n",
     WLAN_FC_GET_STYPE(header->frame_ctl));
   if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
    ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATED &&
    ieee->iw_mode == IW_MODE_INFRA){
    struct ieee80211_network network_resp;
    struct ieee80211_network *network = &network_resp;

    if (0 == (errcode=assoc_parse(ieee,skb, &aid))){
     ieee->state=IEEE80211_LINKED;
     ieee->assoc_id = aid;
     ieee->softmac_stats.rx_ass_ok++;


     if(ieee->qos_support) {
      assoc_resp = (struct ieee80211_assoc_response_frame*)skb->data;
      memset(network, 0, sizeof(*network));
      if (ieee80211_parse_info_param(ieee,assoc_resp->info_element, rx_stats->len - sizeof(*assoc_resp), network,rx_stats)){


       return 1;
      }
      else
      {
       memcpy(ieee->pHTInfo->PeerHTCapBuf, network->bssht.bdHTCapBuf, network->bssht.bdHTCapLen);
       memcpy(ieee->pHTInfo->PeerHTInfoBuf, network->bssht.bdHTInfoBuf, network->bssht.bdHTInfoLen);
      }
      if (ieee->handle_assoc_response != ((void*)0))
       ieee->handle_assoc_response(ieee->dev, (struct ieee80211_assoc_response_frame*)header, network);
     }
     ieee80211_associate_complete(ieee);
    } else {

     ieee->softmac_stats.rx_ass_err++;
     printk(
      "Association response status code 0x%x\n",
      errcode);
     IEEE80211_DEBUG_MGMT(
      "Association response status code 0x%x\n",
      errcode);
     if(ieee->AsocRetryCount < RT_ASOC_RETRY_LIMIT) {
      queue_work(ieee->wq, &ieee->associate_procedure_wq);
     } else {
      ieee80211_associate_abort(ieee);
     }
    }
   }
   break;

  case 136:
  case 129:

   if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
    ieee->iw_mode == IW_MODE_MASTER)

    ieee80211_rx_assoc_rq(ieee, skb);
   break;

  case 134:

   if (ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE){
    if (ieee->state == IEEE80211_ASSOCIATING_AUTHENTICATING &&
    ieee->iw_mode == IW_MODE_INFRA){

      IEEE80211_DEBUG_MGMT("Received authentication response");

      if (0 == (errcode=auth_parse(skb, &challenge, &chlen))){
       if(ieee->open_wep || !challenge){
        ieee->state = IEEE80211_ASSOCIATING_AUTHENTICATED;
        ieee->softmac_stats.rx_auth_rs_ok++;
        if(!(ieee->pHTInfo->IOTAction&HT_IOT_ACT_PURE_N_MODE))
        {
         if (!ieee->GetNmodeSupportBySecCfg(ieee->dev))
         {

          if(IsHTHalfNmodeAPs(ieee))
          {
           bSupportNmode = 1;
           bHalfSupportNmode = 1;
          }
          else
          {
           bSupportNmode = 0;
           bHalfSupportNmode = 0;
          }
         printk("==========>to link with AP using SEC(%d, %d)", bSupportNmode, bHalfSupportNmode);
         }
        }

        if(bSupportNmode) {

         ieee->SetWirelessMode(ieee->dev, ieee->current_network.mode);

        }else{


         ieee->SetWirelessMode(ieee->dev, IEEE_G);
        }

        if (ieee->current_network.mode == IEEE_N_24G && bHalfSupportNmode == 1)
        {
         printk("===============>entern half N mode\n");
         ieee->bHalfWirelessN24GMode = 1;
        }
        else
         ieee->bHalfWirelessN24GMode = 0;

        ieee80211_associate_step2(ieee);
       }else{
        ieee80211_auth_challenge(ieee, challenge, chlen);
       }
      }else{
       ieee->softmac_stats.rx_auth_rs_err++;
       IEEE80211_DEBUG_MGMT("Authentication respose status code 0x%x",errcode);

       printk("Authentication respose status code 0x%x",errcode);
       ieee80211_associate_abort(ieee);
      }

     }else if (ieee->iw_mode == IW_MODE_MASTER){
      ieee80211_rx_auth_rq(ieee, skb);
     }
    }
   break;

  case 130:

   if ((ieee->softmac_features & IEEE_SOFTMAC_PROBERS) &&
    ((ieee->iw_mode == IW_MODE_ADHOC ||
    ieee->iw_mode == IW_MODE_MASTER) &&
    ieee->state == IEEE80211_LINKED)){
    ieee80211_rx_probe_rq(ieee, skb);
   }
   break;

  case 132:
  case 133:



   if ((ieee->softmac_features & IEEE_SOFTMAC_ASSOCIATE) &&
    ieee->state == IEEE80211_LINKED &&
    ieee->iw_mode == IW_MODE_INFRA){
    printk("==========>received disassoc/deauth(%x) frame, reason code:%x\n",WLAN_FC_GET_STYPE(header->frame_ctl), ((struct ieee80211_disassoc*)skb->data)->reason);
    ieee->state = IEEE80211_ASSOCIATING;
    ieee->softmac_stats.reassoc++;
    ieee->is_roaming = 1;
    ieee80211_disassociate(ieee);


    RemovePeerTS(ieee, header->addr2);
    if(ieee->LedControlHandler != ((void*)0))
            ieee->LedControlHandler(ieee->dev, LED_CTL_START_TO_LINK);
    queue_work(ieee->wq, &ieee->associate_procedure_wq);
   }
   break;
  case 131:
   ieee80211_process_action(ieee,skb);
   break;
  default:
   return -1;
   break;
 }


 return 0;
}
