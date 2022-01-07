
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {scalar_t__ data; } ;
struct hci_ev_remote_features {int status; int handle; int features; } ;
struct hci_dev {scalar_t__ state; int features; int name; } ;
struct hci_cp_read_remote_ext_features {int page; int handle; } ;
struct hci_conn {scalar_t__ state; int features; int name; } ;
typedef int cp ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_READ_REMOTE_EXT_FEATURES ;
 int __le16_to_cpu (int ) ;
 struct hci_dev* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_conn_put (struct hci_dev*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_proto_connect_cfm (struct hci_dev*,int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_read_remote_ext_features*) ;
 scalar_t__ lmp_ssp_capable (struct hci_dev*) ;
 int memcpy (int ,int ,int) ;

__attribute__((used)) static inline void hci_remote_features_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_remote_features *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s status %d", hdev->name, ev->status);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  if (!ev->status)
   memcpy(conn->features, ev->features, 8);

  if (conn->state == BT_CONFIG) {
   if (!ev->status && lmp_ssp_capable(hdev) &&
      lmp_ssp_capable(conn)) {
    struct hci_cp_read_remote_ext_features cp;
    cp.handle = ev->handle;
    cp.page = 0x01;
    hci_send_cmd(hdev,
     HCI_OP_READ_REMOTE_EXT_FEATURES,
       sizeof(cp), &cp);
   } else {
    conn->state = BT_CONNECTED;
    hci_proto_connect_cfm(conn, ev->status);
    hci_conn_put(conn);
   }
  }
 }

 hci_dev_unlock(hdev);
}
