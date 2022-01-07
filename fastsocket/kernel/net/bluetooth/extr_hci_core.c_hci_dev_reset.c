
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int tx_task; int flags; scalar_t__ sco_cnt; scalar_t__ acl_cnt; int cmd_cnt; int (* flush ) (struct hci_dev*) ;int cmd_q; int rx_q; } ;
typedef int __u16 ;


 int ENODEV ;
 int HCI_INIT_TIMEOUT ;
 int HCI_RAW ;
 int HCI_UP ;
 int __hci_request (struct hci_dev*,int ,int ,int ) ;
 int atomic_set (int *,int) ;
 int hci_conn_hash_flush (struct hci_dev*) ;
 struct hci_dev* hci_dev_get (int ) ;
 int hci_dev_lock_bh (struct hci_dev*) ;
 int hci_dev_put (struct hci_dev*) ;
 int hci_dev_unlock_bh (struct hci_dev*) ;
 int hci_req_lock (struct hci_dev*) ;
 int hci_req_unlock (struct hci_dev*) ;
 int hci_reset_req ;
 int inquiry_cache_flush (struct hci_dev*) ;
 int msecs_to_jiffies (int ) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct hci_dev*) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;
 int test_bit (int ,int *) ;

int hci_dev_reset(__u16 dev)
{
 struct hci_dev *hdev;
 int ret = 0;

 if (!(hdev = hci_dev_get(dev)))
  return -ENODEV;

 hci_req_lock(hdev);
 tasklet_disable(&hdev->tx_task);

 if (!test_bit(HCI_UP, &hdev->flags))
  goto done;


 skb_queue_purge(&hdev->rx_q);
 skb_queue_purge(&hdev->cmd_q);

 hci_dev_lock_bh(hdev);
 inquiry_cache_flush(hdev);
 hci_conn_hash_flush(hdev);
 hci_dev_unlock_bh(hdev);

 if (hdev->flush)
  hdev->flush(hdev);

 atomic_set(&hdev->cmd_cnt, 1);
 hdev->acl_cnt = 0; hdev->sco_cnt = 0;

 if (!test_bit(HCI_RAW, &hdev->flags))
  ret = __hci_request(hdev, hci_reset_req, 0,
     msecs_to_jiffies(HCI_INIT_TIMEOUT));

done:
 tasklet_enable(&hdev->tx_task);
 hci_req_unlock(hdev);
 hci_dev_put(hdev);
 return ret;
}
