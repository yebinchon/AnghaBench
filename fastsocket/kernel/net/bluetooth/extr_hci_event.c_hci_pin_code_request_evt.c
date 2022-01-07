
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_pin_code_req {int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ state; int disc_timeout; } ;


 int ACL_LINK ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ) ;
 int HCI_PAIRING_TIMEOUT ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static inline void hci_pin_code_request_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_pin_code_req *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn && conn->state == BT_CONNECTED) {
  hci_conn_hold(conn);
  conn->disc_timeout = HCI_PAIRING_TIMEOUT;
  hci_conn_put(conn);
 }

 hci_dev_unlock(hdev);
}
