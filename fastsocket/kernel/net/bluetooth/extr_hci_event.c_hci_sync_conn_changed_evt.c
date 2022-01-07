
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sk_buff {int dummy; } ;
struct hci_dev {int name; } ;


 int BT_DBG (char*,int ) ;

__attribute__((used)) static inline void hci_sync_conn_changed_evt(struct hci_dev *hdev, struct sk_buff *skb)
{
 BT_DBG("%s", hdev->name);
}
