
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int devref; } ;


 int atomic_inc (int *) ;

void hci_conn_hold_device(struct hci_conn *conn)
{
 atomic_inc(&conn->devref);
}
