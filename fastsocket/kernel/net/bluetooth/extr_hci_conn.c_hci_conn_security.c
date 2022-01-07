
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_cp_set_conn_encrypt {int encrypt; int handle; } ;
struct hci_conn {int link_mode; TYPE_1__* hdev; int handle; int pend; int ssp_mode; } ;
typedef int cp ;
typedef scalar_t__ __u8 ;
struct TYPE_2__ {int ssp_mode; } ;


 int BT_DBG (char*,struct hci_conn*) ;
 scalar_t__ BT_SECURITY_LOW ;
 scalar_t__ BT_SECURITY_SDP ;
 int HCI_CONN_ENCRYPT_PEND ;
 int HCI_LM_ENCRYPT ;
 int HCI_OP_SET_CONN_ENCRYPT ;
 int cpu_to_le16 (int ) ;
 int hci_conn_auth (struct hci_conn*,scalar_t__,scalar_t__) ;
 int hci_send_cmd (TYPE_1__*,int ,int,struct hci_cp_set_conn_encrypt*) ;
 scalar_t__ test_and_set_bit (int ,int *) ;

int hci_conn_security(struct hci_conn *conn, __u8 sec_level, __u8 auth_type)
{
 BT_DBG("conn %p", conn);

 if (sec_level == BT_SECURITY_SDP)
  return 1;

 if (sec_level == BT_SECURITY_LOW &&
    (!conn->ssp_mode || !conn->hdev->ssp_mode))
  return 1;

 if (conn->link_mode & HCI_LM_ENCRYPT)
  return hci_conn_auth(conn, sec_level, auth_type);

 if (test_and_set_bit(HCI_CONN_ENCRYPT_PEND, &conn->pend))
  return 0;

 if (hci_conn_auth(conn, sec_level, auth_type)) {
  struct hci_cp_set_conn_encrypt cp;
  cp.handle = cpu_to_le16(conn->handle);
  cp.encrypt = 1;
  hci_send_cmd(conn->hdev, HCI_OP_SET_CONN_ENCRYPT,
       sizeof(cp), &cp);
 }

 return 0;
}
