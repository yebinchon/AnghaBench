
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_dev {int name; } ;
typedef int __u8 ;


 int BT_DBG (char*,int ,int ) ;

__attribute__((used)) static void hci_cs_remote_name_req(struct hci_dev *hdev, __u8 status)
{
 BT_DBG("%s status 0x%x", hdev->name, status);
}
