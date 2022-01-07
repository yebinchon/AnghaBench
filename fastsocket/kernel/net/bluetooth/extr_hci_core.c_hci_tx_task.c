
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int raw_q; int sco_cnt; int acl_cnt; int name; } ;


 int BT_DBG (char*,int ,int ,int ) ;
 int hci_sched_acl (struct hci_dev*) ;
 int hci_sched_esco (struct hci_dev*) ;
 int hci_sched_sco (struct hci_dev*) ;
 int hci_send_frame (struct sk_buff*) ;
 int hci_task_lock ;
 int read_lock (int *) ;
 int read_unlock (int *) ;
 struct sk_buff* skb_dequeue (int *) ;

__attribute__((used)) static void hci_tx_task(unsigned long arg)
{
 struct hci_dev *hdev = (struct hci_dev *) arg;
 struct sk_buff *skb;

 read_lock(&hci_task_lock);

 BT_DBG("%s acl %d sco %d", hdev->name, hdev->acl_cnt, hdev->sco_cnt);



 hci_sched_acl(hdev);

 hci_sched_sco(hdev);

 hci_sched_esco(hdev);


 while ((skb = skb_dequeue(&hdev->raw_q)))
  hci_send_frame(skb);

 read_unlock(&hci_task_lock);
}
