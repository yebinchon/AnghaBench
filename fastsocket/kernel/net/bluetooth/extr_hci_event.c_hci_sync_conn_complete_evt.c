
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct hci_ev_sync_conn_complete {int status; scalar_t__ link_type; int handle; int bdaddr; } ;
struct hci_dev {int esco_type; int name; } ;
struct hci_conn {int attempt; int pkt_type; int state; TYPE_1__* link; int out; int handle; int type; } ;
struct TYPE_2__ {int handle; } ;


 int BT_CLOSED ;
 int BT_CONNECTED ;
 int BT_DBG (char*,int ,int) ;
 int EDR_ESCO_MASK ;
 scalar_t__ ESCO_LINK ;
 int SCO_ESCO_MASK ;
 int SCO_LINK ;
 int __le16_to_cpu (int ) ;
 int hci_conn_add_sysfs (struct hci_conn*) ;
 int hci_conn_del (struct hci_conn*) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,scalar_t__,int *) ;
 int hci_conn_hold_device (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_proto_connect_cfm (struct hci_conn*,int) ;
 int hci_setup_sync (struct hci_conn*,int ) ;

__attribute__((used)) static inline void hci_sync_conn_complete_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_sync_conn_complete *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_ba(hdev, ev->link_type, &ev->bdaddr);
 if (!conn) {
  if (ev->link_type == ESCO_LINK)
   goto unlock;

  conn = hci_conn_hash_lookup_ba(hdev, ESCO_LINK, &ev->bdaddr);
  if (!conn)
   goto unlock;

  conn->type = SCO_LINK;
 }

 switch (ev->status) {
 case 0x00:
  conn->handle = __le16_to_cpu(ev->handle);
  conn->state = BT_CONNECTED;

  hci_conn_hold_device(conn);
  hci_conn_add_sysfs(conn);
  break;

 case 0x1c:
 case 0x1f:
  if (conn->out && conn->attempt < 2) {
   conn->pkt_type = (hdev->esco_type & SCO_ESCO_MASK) |
     (hdev->esco_type & EDR_ESCO_MASK);
   hci_setup_sync(conn, conn->link->handle);
   goto unlock;
  }


 default:
  conn->state = BT_CLOSED;
  break;
 }

 hci_proto_connect_cfm(conn, ev->status);
 if (ev->status)
  hci_conn_del(conn);

unlock:
 hci_dev_unlock(hdev);
}
