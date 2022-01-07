
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct sk_buff {scalar_t__ data; } ;
struct TYPE_2__ {int ssp_mode; } ;
struct inquiry_entry {TYPE_1__ data; } ;
struct hci_ev_remote_ext_features {int page; int* features; int status; int handle; } ;
struct hci_dev {scalar_t__ ssp_mode; int name; } ;
struct hci_cp_auth_requested {int handle; } ;
struct hci_conn {int ssp_mode; scalar_t__ state; scalar_t__ sec_level; scalar_t__ out; int dst; } ;
typedef int cp ;


 scalar_t__ BT_CONFIG ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ) ;
 scalar_t__ BT_SECURITY_SDP ;
 int HCI_OP_AUTH_REQUESTED ;
 int __le16_to_cpu (int ) ;
 struct hci_conn* hci_conn_hash_lookup_handle (struct hci_dev*,int ) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 struct inquiry_entry* hci_inquiry_cache_lookup (struct hci_dev*,int *) ;
 int hci_proto_connect_cfm (struct hci_conn*,int ) ;
 int hci_send_cmd (struct hci_dev*,int ,int,struct hci_cp_auth_requested*) ;

__attribute__((used)) static inline void hci_remote_ext_features_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 struct hci_ev_remote_ext_features *ev = (void *) skb->data;
 struct hci_conn *conn;

 BT_DBG("%s", hdev->name);

 hci_dev_lock(hdev);

 conn = hci_conn_hash_lookup_handle(hdev, __le16_to_cpu(ev->handle));
 if (conn) {
  if (!ev->status && ev->page == 0x01) {
   struct inquiry_entry *ie;

   if ((ie = hci_inquiry_cache_lookup(hdev, &conn->dst)))
    ie->data.ssp_mode = (ev->features[0] & 0x01);

   conn->ssp_mode = (ev->features[0] & 0x01);
  }

  if (conn->state == BT_CONFIG) {
   if (!ev->status && hdev->ssp_mode > 0 &&
     conn->ssp_mode > 0 && conn->out &&
     conn->sec_level != BT_SECURITY_SDP) {
    struct hci_cp_auth_requested cp;
    cp.handle = ev->handle;
    hci_send_cmd(hdev, HCI_OP_AUTH_REQUESTED,
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
