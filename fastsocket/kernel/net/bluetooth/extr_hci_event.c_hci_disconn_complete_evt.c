
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_disconn_complete {int reason; int handle; scalar_t__ status; } ;
struct hci_dev {int name; } ;
struct hci_conn {int state; } ;


 int BT_CLOSED ;
 int BT_DBG (char*,int ,scalar_t__) ;
 int __le16_to_cpu (int ) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_proto_disconn_cfm (struct hci_conn*,int ) ;

__attribute__((used)) static inline void hci_disconn_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_disconn_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 if (ev->status)
  return;

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  conn->state = BT_CLOSED;

  hci_proto_disconn_cfm(conn, ev->reason);
  hci_conn_del(conn);
 }

 hci_dev_unlock(hdev);
}
