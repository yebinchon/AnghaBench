
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int cmd_q; scalar_t__ cmd_last_tx; int cmd_cnt; int sent_cmd; int name; } ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int BT_ERR (char*,int ) ;
 int GFP_ATOMIC ;
 scalar_t__ HZ ;
 int atomic_dec (int *) ;
 scalar_t__ atomic_read (int *) ;
 int atomic_set (int *,int) ;
 int hci_sched_cmd (struct hci_dev*) ;
 int hci_send_frame (struct sk_buff*) ;
 scalar_t__ jiffies ;
 int kfree_skb (int ) ;
 int skb_clone (struct sk_buff*,int ) ;
 struct sk_buff* skb_dequeue (int *) ;
 int skb_queue_head (int *,struct sk_buff*) ;
 scalar_t__ time_after (scalar_t__,scalar_t__) ;

__attribute__((used)) static void hci_cmd_task(unsigned long arg)
{
 struct hci_dev *hdev = (struct hci_dev *) arg;
 struct sk_buff *skb;

 BT_DBG("%s cmd %d", hdev->name, atomic_read(&hdev->cmd_cnt));

 if (!atomic_read(&hdev->cmd_cnt) && time_after(jiffies, hdev->cmd_last_tx + HZ)) {
  BT_ERR("%s command tx timeout", hdev->name);
  atomic_set(&hdev->cmd_cnt, 1);
 }


 if (atomic_read(&hdev->cmd_cnt) && (skb = skb_dequeue(&hdev->cmd_q))) {
  kfree_skb(hdev->sent_cmd);

  if ((hdev->sent_cmd = skb_clone(skb, GFP_ATOMIC))) {
   atomic_dec(&hdev->cmd_cnt);
   hci_send_frame(skb);
   hdev->cmd_last_tx = jiffies;
  } else {
   skb_queue_head(&hdev->cmd_q, skb);
   hci_sched_cmd(hdev);
  }
 }
}
