
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {int sac_state; scalar_t__ sac_assoc_id; } ;
struct TYPE_4__ {scalar_t__ sn_type; } ;
union sctp_notification {TYPE_2__ sn_assoc_change; TYPE_1__ sn_header; } ;
struct sockaddr_storage {int dummy; } ;
struct sctp_prim {scalar_t__ ssp_assoc_id; int ssp_addr; } ;
struct msghdr {int dummy; } ;
struct connection {int sctp_assoc; int rwork; int flags; int swork; int sock; } ;
struct TYPE_6__ {int sd; scalar_t__ associd; } ;
typedef TYPE_3__ sctp_peeloff_arg_t ;
typedef int parg ;


 int CF_CONNECT_PENDING ;
 int CF_INIT_PENDING ;
 int CF_READ_PENDING ;
 int CF_WRITE_PENDING ;
 int GFP_NOFS ;
 int IPPROTO_SCTP ;
 scalar_t__ SCTP_ASSOC_CHANGE ;



 int SCTP_PRIMARY_ADDR ;


 int SCTP_SOCKOPT_PEELOFF ;
 int add_sock (int ,struct connection*) ;
 int addr_to_nodeid (int *,int*) ;
 struct connection* assoc2con (scalar_t__) ;
 int clear_bit (int ,int *) ;
 int kernel_getsockopt (int ,int ,int ,void*,int*) ;
 int log_print (char*,...) ;
 int make_sockaddr (int *,int ,int*) ;
 int memset (struct sctp_prim*,int ,int) ;
 struct connection* nodeid2con (int,int ) ;
 int printk (char*,...) ;
 int queue_work (int ,int *) ;
 int recv_workqueue ;
 int sctp_init_failed () ;
 int sctp_send_shutdown (scalar_t__) ;
 int send_workqueue ;
 int sockfd_lookup (int ,int*) ;
 int sockfd_put (int ) ;
 int test_and_set_bit (int ,int *) ;

__attribute__((used)) static void process_sctp_notification(struct connection *con,
          struct msghdr *msg, char *buf)
{
 union sctp_notification *sn = (union sctp_notification *)buf;

 if (sn->sn_header.sn_type == SCTP_ASSOC_CHANGE) {
  switch (sn->sn_assoc_change.sac_state) {

  case 130:
  case 129:
  {

   struct sctp_prim prim;
   int nodeid;
   int prim_len, ret;
   int addr_len;
   struct connection *new_con;
   sctp_peeloff_arg_t parg;
   int parglen = sizeof(parg);
   int err;






   if ((int)sn->sn_assoc_change.sac_assoc_id <= 0) {
    log_print("COMM_UP for invalid assoc ID %d",
      (int)sn->sn_assoc_change.sac_assoc_id);
    sctp_init_failed();
    return;
   }
   memset(&prim, 0, sizeof(struct sctp_prim));
   prim_len = sizeof(struct sctp_prim);
   prim.ssp_assoc_id = sn->sn_assoc_change.sac_assoc_id;

   ret = kernel_getsockopt(con->sock,
      IPPROTO_SCTP,
      SCTP_PRIMARY_ADDR,
      (char*)&prim,
      &prim_len);
   if (ret < 0) {
    log_print("getsockopt/sctp_primary_addr on "
       "new assoc %d failed : %d",
       (int)sn->sn_assoc_change.sac_assoc_id,
       ret);


    new_con = assoc2con(sn->sn_assoc_change.sac_assoc_id);
    if (new_con)
     clear_bit(CF_CONNECT_PENDING, &con->flags);
    return;
   }
   make_sockaddr(&prim.ssp_addr, 0, &addr_len);
   if (addr_to_nodeid(&prim.ssp_addr, &nodeid)) {
    int i;
    unsigned char *b=(unsigned char *)&prim.ssp_addr;
    log_print("reject connect from unknown addr");
    for (i=0; i<sizeof(struct sockaddr_storage);i++)
     printk("%02x ", b[i]);
    printk("\n");
    sctp_send_shutdown(prim.ssp_assoc_id);
    return;
   }

   new_con = nodeid2con(nodeid, GFP_NOFS);
   if (!new_con)
    return;


   parg.associd = sn->sn_assoc_change.sac_assoc_id;
   ret = kernel_getsockopt(con->sock, IPPROTO_SCTP,
      SCTP_SOCKOPT_PEELOFF,
      (void *)&parg, &parglen);
   if (ret < 0) {
    log_print("Can't peel off a socket for "
       "connection %d to node %d: err=%d",
       parg.associd, nodeid, ret);
    return;
   }
   new_con->sock = sockfd_lookup(parg.sd, &err);
   if (!new_con->sock) {
    log_print("sockfd_lookup error %d", err);
    return;
   }
   add_sock(new_con->sock, new_con);
   sockfd_put(new_con->sock);

   log_print("connecting to %d sctp association %d",
     nodeid, (int)sn->sn_assoc_change.sac_assoc_id);


   clear_bit(CF_CONNECT_PENDING, &new_con->flags);
   clear_bit(CF_INIT_PENDING, &con->flags);
   if (!test_and_set_bit(CF_WRITE_PENDING, &new_con->flags)) {
    queue_work(send_workqueue, &new_con->swork);
   }
   if (!test_and_set_bit(CF_READ_PENDING, &new_con->flags))
    queue_work(recv_workqueue, &new_con->rwork);
  }
  break;

  case 131:
  case 128:
  {
   con = assoc2con(sn->sn_assoc_change.sac_assoc_id);
   if (con) {
    con->sctp_assoc = 0;
   }
  }
  break;





  case 132:
  {
   log_print("Can't start SCTP association - retrying");
   sctp_init_failed();
  }
  break;

  default:
   log_print("unexpected SCTP assoc change id=%d state=%d",
      (int)sn->sn_assoc_change.sac_assoc_id,
      sn->sn_assoc_change.sac_state);
  }
 }
}
