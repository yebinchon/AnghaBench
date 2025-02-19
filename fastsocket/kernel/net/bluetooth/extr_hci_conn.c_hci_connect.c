
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
struct hci_conn {scalar_t__ state; int handle; struct hci_conn* link; void* auth_type; void* sec_level; } ;
typedef int bdaddr_t ;
typedef void* __u8 ;


 int ACL_LINK ;
 scalar_t__ BT_CLOSED ;
 scalar_t__ BT_CONNECTED ;
 int BT_DBG (char*,int ,int ) ;
 scalar_t__ BT_OPEN ;
 int batostr (int *) ;
 int hci_acl_connect (struct hci_conn*) ;
 int hci_add_sco (struct hci_conn*,int ) ;
 struct hci_conn* hci_conn_add (struct hci_dev*,int,int *) ;
 struct hci_conn* hci_conn_hash_lookup_ba (struct hci_dev*,int,int *) ;
 int hci_conn_hold (struct hci_conn*) ;
 int hci_conn_put (struct hci_conn*) ;
 int hci_setup_sync (struct hci_conn*,int ) ;
 scalar_t__ lmp_esco_capable (struct hci_dev*) ;

struct hci_conn *hci_connect(struct hci_dev *hdev, int type, bdaddr_t *dst, __u8 sec_level, __u8 auth_type)
{
 struct hci_conn *acl;
 struct hci_conn *sco;

 BT_DBG("%s dst %s", hdev->name, batostr(dst));

 if (!(acl = hci_conn_hash_lookup_ba(hdev, ACL_LINK, dst))) {
  if (!(acl = hci_conn_add(hdev, ACL_LINK, dst)))
   return ((void*)0);
 }

 hci_conn_hold(acl);

 if (acl->state == BT_OPEN || acl->state == BT_CLOSED) {
  acl->sec_level = sec_level;
  acl->auth_type = auth_type;
  hci_acl_connect(acl);
 }

 if (type == ACL_LINK)
  return acl;

 if (!(sco = hci_conn_hash_lookup_ba(hdev, type, dst))) {
  if (!(sco = hci_conn_add(hdev, type, dst))) {
   hci_conn_put(acl);
   return ((void*)0);
  }
 }

 acl->link = sco;
 sco->link = acl;

 hci_conn_hold(sco);

 if (acl->state == BT_CONNECTED &&
   (sco->state == BT_OPEN || sco->state == BT_CLOSED)) {
  if (lmp_esco_capable(hdev))
   hci_setup_sync(sco, acl->handle);
  else
   hci_add_sco(sco, acl->handle);
 }

 return sco;
}
