
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int tx_task; int (* notify ) (struct hci_dev*,int ) ;int acl_cnt; int name; } ;
struct hci_conn {scalar_t__ type; int data_q; struct hci_conn* link; scalar_t__ sent; int disc_timer; int idle_timer; int handle; struct hci_dev* hdev; } ;


 scalar_t__ ACL_LINK ;
 int BT_DBG (char*,int ,struct hci_conn*,int ) ;
 int HCI_NOTIFY_CONN_DEL ;
 int del_timer (int *) ;
 int hci_conn_hash_del (struct hci_dev*,struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_conn_put_device (struct hci_conn*) ;
 int hci_dev_put (struct hci_dev*) ;
 int skb_queue_purge (int *) ;
 int stub1 (struct hci_dev*,int ) ;
 int tasklet_disable (int *) ;
 int tasklet_enable (int *) ;

int hci_conn_del(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("%s conn %p handle %d", hdev->name, conn, conn->handle);

 del_timer(&conn->idle_timer);

 del_timer(&conn->disc_timer);

 if (conn->type == ACL_LINK) {
  struct hci_conn *sco = conn->link;
  if (sco)
   sco->link = ((void*)0);


  hdev->acl_cnt += conn->sent;
 } else {
  struct hci_conn *acl = conn->link;
  if (acl) {
   acl->link = ((void*)0);
   hci_conn_put(acl);
  }
 }

 tasklet_disable(&hdev->tx_task);

 hci_conn_hash_del(hdev, conn);
 if (hdev->notify)
  hdev->notify(hdev, HCI_NOTIFY_CONN_DEL);

 tasklet_enable(&hdev->tx_task);

 skb_queue_purge(&conn->data_q);

 hci_conn_put_device(conn);

 hci_dev_put(hdev);

 return 0;
}
