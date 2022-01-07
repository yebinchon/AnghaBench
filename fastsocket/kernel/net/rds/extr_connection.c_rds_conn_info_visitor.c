
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct rds_info_connection {scalar_t__ flags; int transport; int faddr; int laddr; int next_rx_seq; int next_tx_seq; } ;
struct rds_connection {int c_state; int c_flags; TYPE_1__* c_trans; int c_faddr; int c_laddr; int c_next_rx_seq; int c_next_tx_seq; } ;
struct TYPE_2__ {int t_name; } ;


 int CONNECTED ;
 int CONNECTING ;
 scalar_t__ RDS_CONN_CONNECTING ;
 scalar_t__ RDS_CONN_UP ;
 int RDS_IN_XMIT ;
 int SENDING ;
 scalar_t__ atomic_read (int *) ;
 int rds_conn_info_set (scalar_t__,int,int ) ;
 int strncpy (int ,int ,int) ;
 int test_bit (int ,int *) ;

__attribute__((used)) static int rds_conn_info_visitor(struct rds_connection *conn,
      void *buffer)
{
 struct rds_info_connection *cinfo = buffer;

 cinfo->next_tx_seq = conn->c_next_tx_seq;
 cinfo->next_rx_seq = conn->c_next_rx_seq;
 cinfo->laddr = conn->c_laddr;
 cinfo->faddr = conn->c_faddr;
 strncpy(cinfo->transport, conn->c_trans->t_name,
  sizeof(cinfo->transport));
 cinfo->flags = 0;

 rds_conn_info_set(cinfo->flags, test_bit(RDS_IN_XMIT, &conn->c_flags),
     SENDING);

 rds_conn_info_set(cinfo->flags,
     atomic_read(&conn->c_state) == RDS_CONN_CONNECTING,
     CONNECTING);
 rds_conn_info_set(cinfo->flags,
     atomic_read(&conn->c_state) == RDS_CONN_UP,
     CONNECTED);
 return 1;
}
