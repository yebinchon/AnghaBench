
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {scalar_t__ flags; int (* close ) (struct hci_dev*) ;int * sent_cmd; int (* flush ) (struct hci_dev*) ;int rx_q; int cmd_q; int cmd_task; int tx_task; int rx_task; int cmd_cnt; scalar_t__ (* open ) (struct hci_dev*) ;scalar_t__ quirks; scalar_t__ rfkill; int name; } ;
typedef int __u16 ;


 int BT_DBG (char*,int ,struct hci_dev*) ;
 int EALREADY ;
 int EIO ;
 int ENODEV ;
 int ERFKILL ;
 int HCI_DEV_UP ;
 int HCI_INIT ;
 int HCI_INIT_TIMEOUT ;
 int HCI_QUIRK_RAW_DEVICE ;
 int HCI_RAW ;
 int HCI_UP ;
 int __hci_request (struct hci_dev*,int ,int ,int ) ;
 int atomic_set (int *,int) ;
 int clear_bit (int ,scalar_t__*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_hold (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_init_req ;
 int hci_notify (struct hci_dev*,int ) ;
 int hci_req_lock (struct hci_dev*) ;
 int hci_req_unlock (struct hci_dev*) ;
 int kfree_skb (int *) ;
 int msecs_to_jiffies (int ) ;
 scalar_t__ rfkill_blocked (scalar_t__) ;
 int set_bit (int ,scalar_t__*) ;
 int skb_queue_purge (int *) ;
 scalar_t__ stub1 (struct hci_dev*) ;
 int stub2 (struct hci_dev*) ;
 int stub3 (struct hci_dev*) ;
 int tasklet_kill (int *) ;
 scalar_t__ test_bit (int ,scalar_t__*) ;

int hci_dev_open(__u16 dev)
{
 struct hci_dev *hdev;
 int ret = 0;

 if (!(hdev = hci_dev_get(dev)))
  return -ENODEV;

 BT_DBG("%s %p", hdev->name, hdev);

 hci_req_lock(hdev);

 if (hdev->rfkill && rfkill_blocked(hdev->rfkill)) {
  ret = -ERFKILL;
  goto done;
 }

 if (test_bit(HCI_UP, &hdev->flags)) {
  ret = -EALREADY;
  goto done;
 }

 if (test_bit(HCI_QUIRK_RAW_DEVICE, &hdev->quirks))
  set_bit(HCI_RAW, &hdev->flags);

 if (hdev->open(hdev)) {
  ret = -EIO;
  goto done;
 }

 if (!test_bit(HCI_RAW, &hdev->flags)) {
  atomic_set(&hdev->cmd_cnt, 1);
  set_bit(HCI_INIT, &hdev->flags);


  ret = __hci_request(hdev, hci_init_req, 0,
     msecs_to_jiffies(HCI_INIT_TIMEOUT));

  clear_bit(HCI_INIT, &hdev->flags);
 }

 if (!ret) {
  hci_dev_hold(hdev);
  set_bit(HCI_UP, &hdev->flags);
  hci_notify(hdev, HCI_DEV_UP);
 } else {

  tasklet_kill(&hdev->rx_task);
  tasklet_kill(&hdev->tx_task);
  tasklet_kill(&hdev->cmd_task);

  skb_queue_purge(&hdev->cmd_q);
  skb_queue_purge(&hdev->rx_q);

  if (hdev->flush)
   hdev->flush(hdev);

  if (hdev->sent_cmd) {
   kfree_skb(hdev->sent_cmd);
   hdev->sent_cmd = ((void*)0);
  }

  hdev->close(hdev);
  hdev->flags = 0;
 }

done:
 hci_req_unlock(hdev);
 hci_dev_put(hdev);
 return ret;
}
