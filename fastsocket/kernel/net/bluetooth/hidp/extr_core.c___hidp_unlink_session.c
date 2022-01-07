
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int list; int conn; } ;


 int THIS_MODULE ;
 int hci_conn_put_device (int ) ;
 int list_del (int *) ;
 int module_put (int ) ;

__attribute__((used)) static void __hidp_unlink_session(struct hidp_session *session)
{
 hci_conn_put_device(session->conn);

 list_del(&session->list);
 module_put(THIS_MODULE);
}
