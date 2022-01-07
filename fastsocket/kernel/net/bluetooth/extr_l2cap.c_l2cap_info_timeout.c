
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct l2cap_conn {scalar_t__ info_ident; int info_state; } ;


 int L2CAP_INFO_FEAT_MASK_REQ_DONE ;
 int l2cap_conn_start (struct l2cap_conn*) ;

__attribute__((used)) static void l2cap_info_timeout(unsigned long arg)
{
 struct l2cap_conn *conn = (void *) arg;

 conn->info_state |= L2CAP_INFO_FEAT_MASK_REQ_DONE;
 conn->info_ident = 0;

 l2cap_conn_start(conn);
}
