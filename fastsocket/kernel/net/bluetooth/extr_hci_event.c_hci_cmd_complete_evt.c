
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_cmd_complete {scalar_t__ ncmd; int opcode; } ;
struct hci_dev {int cmd_q; int cmd_cnt; int name; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,int) ;
 int __le16_to_cpu (int ) ;
 int atomic_set (int *,int) ;
 int hci_cc_exit_periodic_inq (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_host_buffer_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_inquiry_cancel (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_bd_addr (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_buffer_size (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_class_of_dev (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_def_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_commands (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_features (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_name (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_local_version (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_ssp_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_read_voice_setting (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_remote_name_req_cancel (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_reset (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_role_discovery (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_auth_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_class_of_dev (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_def_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_encrypt_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_link_policy (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_local_name (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_scan_enable (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_ssp_mode (struct hci_dev*,struct sk_buff*) ;
 int hci_cc_write_voice_setting (struct hci_dev*,struct sk_buff*) ;
 int hci_sched_cmd (struct hci_dev*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static inline void hci_cmd_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_cmd_complete *ev = (void *) skb->data;
 __u16 opcode;

 skb_pull(skb, sizeof(*ev));

 opcode = __le16_to_cpu(ev->opcode);

 switch (opcode) {
 case 151:
  hci_cc_inquiry_cancel(hdev, skb);
  break;

 case 153:
  hci_cc_exit_periodic_inq(hdev, skb);
  break;

 case 139:
  hci_cc_remote_name_req_cancel(hdev, skb);
  break;

 case 137:
  hci_cc_role_discovery(hdev, skb);
  break;

 case 146:
  hci_cc_read_link_policy(hdev, skb);
  break;

 case 132:
  hci_cc_write_link_policy(hdev, skb);
  break;

 case 147:
  hci_cc_read_def_link_policy(hdev, skb);
  break;

 case 134:
  hci_cc_write_def_link_policy(hdev, skb);
  break;

 case 138:
  hci_cc_reset(hdev, skb);
  break;

 case 131:
  hci_cc_write_local_name(hdev, skb);
  break;

 case 143:
  hci_cc_read_local_name(hdev, skb);
  break;

 case 136:
  hci_cc_write_auth_enable(hdev, skb);
  break;

 case 133:
  hci_cc_write_encrypt_mode(hdev, skb);
  break;

 case 130:
  hci_cc_write_scan_enable(hdev, skb);
  break;

 case 148:
  hci_cc_read_class_of_dev(hdev, skb);
  break;

 case 135:
  hci_cc_write_class_of_dev(hdev, skb);
  break;

 case 140:
  hci_cc_read_voice_setting(hdev, skb);
  break;

 case 128:
  hci_cc_write_voice_setting(hdev, skb);
  break;

 case 152:
  hci_cc_host_buffer_size(hdev, skb);
  break;

 case 141:
  hci_cc_read_ssp_mode(hdev, skb);
  break;

 case 129:
  hci_cc_write_ssp_mode(hdev, skb);
  break;

 case 142:
  hci_cc_read_local_version(hdev, skb);
  break;

 case 145:
  hci_cc_read_local_commands(hdev, skb);
  break;

 case 144:
  hci_cc_read_local_features(hdev, skb);
  break;

 case 149:
  hci_cc_read_buffer_size(hdev, skb);
  break;

 case 150:
  hci_cc_read_bd_addr(hdev, skb);
  break;

 default:
  BT_DBG("%s opcode 0x%x", hdev->name, opcode);
  break;
 }

 if (ev->ncmd) {
  atomic_set(&hdev->cmd_cnt, 1);
  if (!skb_queue_empty(&hdev->cmd_q))
   hci_sched_cmd(hdev);
 }
}
