
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_cmd_status {scalar_t__ ncmd; int status; int opcode; } ;
struct hci_dev {int cmd_q; int cmd_cnt; int name; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,int) ;
 int __le16_to_cpu (int ) ;
 int atomic_set (int *,int) ;
 int hci_cs_add_sco (struct hci_dev*,int ) ;
 int hci_cs_auth_requested (struct hci_dev*,int ) ;
 int hci_cs_create_conn (struct hci_dev*,int ) ;
 int hci_cs_exit_sniff_mode (struct hci_dev*,int ) ;
 int hci_cs_inquiry (struct hci_dev*,int ) ;
 int hci_cs_read_remote_ext_features (struct hci_dev*,int ) ;
 int hci_cs_read_remote_features (struct hci_dev*,int ) ;
 int hci_cs_remote_name_req (struct hci_dev*,int ) ;
 int hci_cs_set_conn_encrypt (struct hci_dev*,int ) ;
 int hci_cs_setup_sync_conn (struct hci_dev*,int ) ;
 int hci_cs_sniff_mode (struct hci_dev*,int ) ;
 int hci_sched_cmd (struct hci_dev*) ;
 int skb_pull (struct sk_buff*,int) ;
 int skb_queue_empty (int *) ;

__attribute__((used)) static inline void hci_cmd_status_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_cmd_status *ev = (void *) skb->data;
 __u16 opcode;

 skb_pull(skb, sizeof(*ev));

 opcode = __le16_to_cpu(ev->opcode);

 switch (opcode) {
 case 134:
  hci_cs_inquiry(hdev, ev->status);
  break;

 case 136:
  hci_cs_create_conn(hdev, ev->status);
  break;

 case 138:
  hci_cs_add_sco(hdev, ev->status);
  break;

 case 137:
  hci_cs_auth_requested(hdev, ev->status);
  break;

 case 129:
  hci_cs_set_conn_encrypt(hdev, ev->status);
  break;

 case 131:
  hci_cs_remote_name_req(hdev, ev->status);
  break;

 case 132:
  hci_cs_read_remote_features(hdev, ev->status);
  break;

 case 133:
  hci_cs_read_remote_ext_features(hdev, ev->status);
  break;

 case 130:
  hci_cs_setup_sync_conn(hdev, ev->status);
  break;

 case 128:
  hci_cs_sniff_mode(hdev, ev->status);
  break;

 case 135:
  hci_cs_exit_sniff_mode(hdev, ev->status);
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
