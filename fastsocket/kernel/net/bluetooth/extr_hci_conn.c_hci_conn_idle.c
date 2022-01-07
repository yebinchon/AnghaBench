
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hci_conn {int mode; } ;


 int BT_DBG (char*,struct hci_conn*,int ) ;
 int hci_conn_enter_sniff_mode (struct hci_conn*) ;

__attribute__((used)) static void hci_conn_idle(unsigned long arg)
{
 struct hci_conn *conn = (void *) arg;

 BT_DBG("conn %p mode %d", conn, conn->mode);

 hci_conn_enter_sniff_mode(conn);
}
