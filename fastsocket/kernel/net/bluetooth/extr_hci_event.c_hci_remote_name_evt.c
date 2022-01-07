
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ) ;
 int hci_conn_check_pending (struct hci_dev*) ;

__attribute__((used)) static inline void hci_remote_name_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 BT_DBG("%s", hdev->name);

 hci_conn_check_pending(hdev);
}
