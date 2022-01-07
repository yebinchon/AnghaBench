
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int dummy; } ;
struct hci_conn {int state; int out; int type; int refcnt; struct hci_dev* hdev; } ;
typedef int __u8 ;


 int ACL_LINK ;
 int BT_CLOSED ;




 int BT_DBG (char*,struct hci_conn*,int) ;
 scalar_t__ atomic_read (int *) ;
 int hci_acl_connect_cancel (struct hci_conn*) ;
 int hci_acl_disconn (struct hci_conn*,int ) ;
 int hci_dev_lock (struct hci_dev*) ;
 int hci_dev_unlock (struct hci_dev*) ;
 int hci_proto_disconn_ind (struct hci_conn*) ;

__attribute__((used)) static void hci_conn_timeout(unsigned long arg)
{
 struct hci_conn *conn = (void *) arg;
 struct hci_dev *hdev = conn->hdev;
 __u8 reason;

 BT_DBG("conn %p state %d", conn, conn->state);

 if (atomic_read(&conn->refcnt))
  return;

 hci_dev_lock(hdev);

 switch (conn->state) {
 case 130:
 case 129:
  if (conn->type == ACL_LINK && conn->out)
   hci_acl_connect_cancel(conn);
  break;
 case 131:
 case 128:
  reason = hci_proto_disconn_ind(conn);
  hci_acl_disconn(conn, reason);
  break;
 default:
  conn->state = BT_CLOSED;
  break;
 }

 hci_dev_unlock(hdev);
}
