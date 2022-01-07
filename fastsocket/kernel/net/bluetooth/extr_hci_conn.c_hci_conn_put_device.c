
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int devref; } ;


 scalar_t__ atomic_dec_and_test (int *) ;
 int hci_conn_del_sysfs (struct hci_conn*) ;

void hci_conn_put_device(struct hci_conn *conn)
{
 if (atomic_dec_and_test(&conn->devref))
  hci_conn_del_sysfs(conn);
}
