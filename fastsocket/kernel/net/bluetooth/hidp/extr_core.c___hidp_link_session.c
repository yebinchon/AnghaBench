
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hidp_session {int conn; int list; } ;


 int THIS_MODULE ;
 int __module_get (int ) ;
 int hci_conn_hold_device (int ) ;
 int hidp_session_list ;
 int list_add (int *,int *) ;

__attribute__((used)) static void __hidp_link_session(struct hidp_session *session)
{
 __module_get(THIS_MODULE);
 list_add(&session->list, &hidp_session_list);

 hci_conn_hold_device(session->conn);
}
