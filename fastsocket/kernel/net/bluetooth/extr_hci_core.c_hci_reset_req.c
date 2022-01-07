
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;


 int BT_DBG (char*,int ,unsigned long) ;
 int HCI_OP_RESET ;
 int hci_send_cmd (struct hci_dev*,int ,int ,int *) ;

__attribute__((used)) static void hci_reset_req(struct hci_dev *hdev, unsigned long opt)
{
 BT_DBG("%s %ld", hdev->name, opt);


 hci_send_cmd(hdev, HCI_OP_RESET, 0, ((void*)0));
}
