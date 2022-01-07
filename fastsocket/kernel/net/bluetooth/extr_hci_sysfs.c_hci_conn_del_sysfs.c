
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int work_del; } ;


 int BT_DBG (char*,struct hci_conn*) ;
 int bt_workq ;
 int queue_work (int ,int *) ;

void hci_conn_del_sysfs(struct hci_conn *conn)
{
 BT_DBG("conn %p", conn);

 queue_work(bt_workq, &conn->work_del);
}
