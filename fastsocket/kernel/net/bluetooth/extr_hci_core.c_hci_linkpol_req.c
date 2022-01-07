
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
typedef int __le16 ;


 int BT_DBG (char*,int ,int ) ;
 int HCI_OP_WRITE_DEF_LINK_POLICY ;
 int cpu_to_le16 (unsigned long) ;
 int hci_send_cmd (struct hci_dev*,int ,int,int *) ;

__attribute__((used)) static void hci_linkpol_req(struct hci_dev *hdev, unsigned long opt)
{
 __le16 policy = cpu_to_le16(opt);

 BT_DBG("%s %x", hdev->name, policy);


 hci_send_cmd(hdev, HCI_OP_WRITE_DEF_LINK_POLICY, 2, &policy);
}
