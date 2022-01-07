
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct hci_dev {int dev; } ;
struct TYPE_2__ {int * parent; int class; int * type; } ;
struct hci_conn {int work_del; int work_add; TYPE_1__ dev; struct hci_dev* hdev; } ;


 int BT_DBG (char*,struct hci_conn*) ;
 int INIT_WORK (int *,int ) ;
 int add_conn ;
 int bt_class ;
 int bt_link ;
 int del_conn ;
 int device_initialize (TYPE_1__*) ;

void hci_conn_init_sysfs(struct hci_conn *conn)
{
 struct hci_dev *hdev = conn->hdev;

 BT_DBG("conn %p", conn);

 conn->dev.type = &bt_link;
 conn->dev.class = bt_class;
 conn->dev.parent = &hdev->dev;

 device_initialize(&conn->dev);

 INIT_WORK(&conn->work_add, add_conn);
 INIT_WORK(&conn->work_del, del_conn);
}
