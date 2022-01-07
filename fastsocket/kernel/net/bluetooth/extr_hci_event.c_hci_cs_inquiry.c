
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int flags; int name; } ;
typedef scalar_t__ __u8 ;


 int BT_DBG (char*,int ,scalar_t__) ;
 int HCI_INQUIRY ;
 int hci_conn_check_pending (struct hci_dev*) ;
 int hci_req_complete (struct hci_dev*,scalar_t__) ;
 int set_bit (int ,int *) ;

__attribute__((used)) static inline void hci_cs_inquiry(struct hci_dev *hdev, __u8 status)
{
 BT_DBG("%s status 0x%x", hdev->name, status);

 if (status) {
  hci_req_complete(hdev, status);

  hci_conn_check_pending(hdev);
 } else
  set_bit(HCI_INQUIRY, &hdev->flags);
}
