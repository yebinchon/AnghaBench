
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct hci_event_hdr {int evt; } ;
struct TYPE_2__ {int evt_rx; } ;
struct hci_dev {TYPE_1__ stat; int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int) ;
 int HCI_EVENT_HDR_SIZE ;
 int hci_auth_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_change_link_key_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_clock_offset_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_cmd_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_cmd_status_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_conn_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_conn_request_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_disconn_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_encrypt_change_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_extended_inquiry_result_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_inquiry_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_inquiry_result_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_inquiry_result_with_rssi_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_io_capa_request_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_link_key_notify_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_link_key_request_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_mode_change_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_num_comp_pkts_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_pin_code_request_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_pkt_type_change_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_pscan_rep_mode_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_qos_setup_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_remote_ext_features_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_remote_features_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_remote_host_features_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_remote_name_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_remote_version_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_role_change_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_simple_pair_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_sniff_subrate_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_sync_conn_changed_evt (struct hci_dev*,struct sk_buff*) ;
 int hci_sync_conn_complete_evt (struct hci_dev*,struct sk_buff*) ;
 int kfree_skb (struct sk_buff*) ;
 int skb_pull (struct sk_buff*,int ) ;

void hci_event_packet(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_event_hdr *hdr = (void *) skb->data;
 __u8 event = hdr->evt;

 skb_pull(skb, HCI_EVENT_HDR_SIZE);

 switch (event) {
 case 149:
  hci_inquiry_complete_evt(hdev, skb);
  break;

 case 148:
  hci_inquiry_result_evt(hdev, skb);
  break;

 case 154:
  hci_conn_complete_evt(hdev, skb);
  break;

 case 153:
  hci_conn_request_evt(hdev, skb);
  break;

 case 152:
  hci_disconn_complete_evt(hdev, skb);
  break;

 case 159:
  hci_auth_complete_evt(hdev, skb);
  break;

 case 134:
  hci_remote_name_evt(hdev, skb);
  break;

 case 151:
  hci_encrypt_change_evt(hdev, skb);
  break;

 case 158:
  hci_change_link_key_complete_evt(hdev, skb);
  break;

 case 136:
  hci_remote_features_evt(hdev, skb);
  break;

 case 133:
  hci_remote_version_evt(hdev, skb);
  break;

 case 138:
  hci_qos_setup_complete_evt(hdev, skb);
  break;

 case 156:
  hci_cmd_complete_evt(hdev, skb);
  break;

 case 155:
  hci_cmd_status_evt(hdev, skb);
  break;

 case 132:
  hci_role_change_evt(hdev, skb);
  break;

 case 142:
  hci_num_comp_pkts_evt(hdev, skb);
  break;

 case 143:
  hci_mode_change_evt(hdev, skb);
  break;

 case 141:
  hci_pin_code_request_evt(hdev, skb);
  break;

 case 144:
  hci_link_key_request_evt(hdev, skb);
  break;

 case 145:
  hci_link_key_notify_evt(hdev, skb);
  break;

 case 157:
  hci_clock_offset_evt(hdev, skb);
  break;

 case 140:
  hci_pkt_type_change_evt(hdev, skb);
  break;

 case 139:
  hci_pscan_rep_mode_evt(hdev, skb);
  break;

 case 147:
  hci_inquiry_result_with_rssi_evt(hdev, skb);
  break;

 case 137:
  hci_remote_ext_features_evt(hdev, skb);
  break;

 case 128:
  hci_sync_conn_complete_evt(hdev, skb);
  break;

 case 129:
  hci_sync_conn_changed_evt(hdev, skb);
  break;

 case 130:
  hci_sniff_subrate_evt(hdev, skb);
  break;

 case 150:
  hci_extended_inquiry_result_evt(hdev, skb);
  break;

 case 146:
  hci_io_capa_request_evt(hdev, skb);
  break;

 case 131:
  hci_simple_pair_complete_evt(hdev, skb);
  break;

 case 135:
  hci_remote_host_features_evt(hdev, skb);
  break;

 default:
  BT_DBG("%s event 0x%x", hdev->name, event);
  break;
 }

 kfree_skb(skb);
 hdev->stat.evt_rx++;
}
