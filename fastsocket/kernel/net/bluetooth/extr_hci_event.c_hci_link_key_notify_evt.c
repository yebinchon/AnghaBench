
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_link_key_notify {int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int disc_timeout; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 int HCI_DISCONN_TIMEOUT ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static inline void hci_link_key_notify_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_link_key_notify *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn) {
  hci_conn_hold(conn);
  conn->disc_timeout = HCI_DISCONN_TIMEOUT;
  hci_conn_put(conn);
 }

 hci_dev_unlock(hdev);
}
