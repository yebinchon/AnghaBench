
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_simple_pair_complete {int bdaddr; } ;
struct hci_dev {int name; } ;
struct hci_conn {int dummy; } ;


 int ACL_LINK ;
 int BT_DBG (char*,int ) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int ,int *) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;

__attribute__((used)) static inline void hci_simple_pair_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_simple_pair_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ACL_LINK, &ev->bdaddr);
 if (conn)
  hci_conn_put(conn);

 hci_dev_unlock(hdev);
}
