
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ flags; int (* close ) (struct hci_dev*) ;int * sent_cmd; int raw_q; int cmd_q; int rx_q; int cmd_task; int cmd_cnt; int (* flush ) (struct hci_dev*) ;int tx_task; int rx_task; int name; } ;


 int BT_DBG (char*,int ,struct hci_dev*) ;
 int ENODEV ;
 int HCI_DEV_DOWN ;
 int HCI_INIT ;
 int HCI_RAW ;
 int HCI_UP ;
 int __hci_request (struct hci_dev*,int ,int ,int ) ;
 int atomic_set (int *,int) ;
 int clear_bit (int ,scalar_t__*) ;
 int hci_conn_hash_flush (struct hci_dev*) ;
 int hci_dev_lock_bh (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_unlock_bh (struct hci_dev*) ;
 int hci_notify (struct hci_dev*,int ) ;
 int hci_req_cancel (struct hci_dev*,int ) ;
 int hci_req_lock (struct hci_dev*) ;
 int hci_req_unlock (struct hci_dev*) ;
 int hci_reset_req ;
 int inquiry_cache_flush (struct hci_dev*) ;
 int kfree_skb (int *) ;
 int msecs_to_jiffies (int) ;
 int set_bit (int ,scalar_t__*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct hci_dev*) ;
 int stub2 (struct hci_dev*) ;
 int tasklet_kill (int *) ;
 int test_and_clear_bit (int ,scalar_t__*) ;
 int test_bit (int ,scalar_t__*) ;

__attribute__((used)) static int hci_dev_do_close(struct hci_dev *hdev)
{
 BT_DBG("%s %p", hdev->name, hdev);

 hci_req_cancel(hdev, ENODEV);
 hci_req_lock(hdev);

 if (!test_and_clear_bit(HCI_UP, &hdev->flags)) {
  hci_req_unlock(hdev);
  return 0;
 }


 tasklet_kill(&hdev->rx_task);
 tasklet_kill(&hdev->tx_task);

 hci_dev_lock_bh(hdev);
 inquiry_cache_flush(hdev);
 hci_conn_hash_flush(hdev);
 hci_dev_unlock_bh(hdev);

 hci_notify(hdev, HCI_DEV_DOWN);

 if (hdev->flush)
  hdev->flush(hdev);


 skb_queue_purge(&hdev->cmd_q);
 atomic_set(&hdev->cmd_cnt, 1);
 if (!test_bit(HCI_RAW, &hdev->flags)) {
  set_bit(HCI_INIT, &hdev->flags);
  __hci_request(hdev, hci_reset_req, 0,
     msecs_to_jiffies(250));
  clear_bit(HCI_INIT, &hdev->flags);
 }


 tasklet_kill(&hdev->cmd_task);


 skb_queue_purge(&hdev->rx_q);
 skb_queue_purge(&hdev->cmd_q);
 skb_queue_purge(&hdev->raw_q);


 if (hdev->sent_cmd) {
  kfree_skb(hdev->sent_cmd);
  hdev->sent_cmd = ((void*)0);
 }



 hdev->close(hdev);


 hdev->flags = 0;

 hci_req_unlock(hdev);

 hci_dev_put(hdev);
 return 0;
}
