
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
typedef unsigned long __u8 ;


 int BT_DBG (char*,int ,unsigned long) ;
 int HCI_OP_WRITE_ENCRYPT_MODE ;
 int hci_send_cmd (struct hci_dev*,int ,int,unsigned long*) ;

__attribute__((used)) static void hci_encrypt_req(struct hci_dev *hdev, unsigned long opt)
{
 __u8 encrypt = opt;

 BT_DBG("%s %x", hdev->name, encrypt);


 hci_send_cmd(hdev, HCI_OP_WRITE_ENCRYPT_MODE, 1, &encrypt);
}
