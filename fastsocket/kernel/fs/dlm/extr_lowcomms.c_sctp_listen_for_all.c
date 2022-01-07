
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_5__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int subscribe ;
struct socket {TYPE_2__* ops; TYPE_1__* sk; } ;
struct sockaddr_storage {int dummy; } ;
struct sctp_event_subscribe {int sctp_data_io_event; int sctp_association_event; int sctp_send_failure_event; int sctp_shutdown_event; int sctp_partial_delivery_event; } ;
struct connection {struct socket* sock; int connect_action; int rx_action; } ;
typedef int localaddr ;
typedef int bufsize ;
struct TYPE_9__ {int ci_tcp_port; } ;
struct TYPE_8__ {int ss_family; } ;
struct TYPE_7__ {int (* listen ) (struct socket*,int) ;} ;
struct TYPE_6__ {int sk_data_ready; struct connection* sk_user_data; } ;


 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int IPPROTO_SCTP ;
 int NEEDED_RMEM ;
 int SCTP_EVENTS ;
 int SOCK_SEQPACKET ;
 int SOL_SCTP ;
 int SOL_SOCKET ;
 int SO_RCVBUFFORCE ;
 int add_sctp_bind_addr (struct connection*,struct sockaddr_storage*,int,int) ;
 TYPE_5__ dlm_config ;
 TYPE_3__** dlm_local_addr ;
 int dlm_local_count ;
 int kernel_setsockopt (struct socket*,int ,int ,char*,int) ;
 int log_print (char*,...) ;
 int lowcomms_data_ready ;
 int make_sockaddr (struct sockaddr_storage*,int ,int*) ;
 int memcpy (struct sockaddr_storage*,TYPE_3__*,int) ;
 int memset (struct sctp_event_subscribe*,int ,int) ;
 struct connection* nodeid2con (int ,int ) ;
 int receive_from_sock ;
 int sctp_init_assoc ;
 int sock_create_kern (int ,int ,int ,struct socket**) ;
 int sock_release (struct socket*) ;
 int stub1 (struct socket*,int) ;

__attribute__((used)) static int sctp_listen_for_all(void)
{
 struct socket *sock = ((void*)0);
 struct sockaddr_storage localaddr;
 struct sctp_event_subscribe subscribe;
 int result = -EINVAL, num = 1, i, addr_len;
 struct connection *con = nodeid2con(0, GFP_NOFS);
 int bufsize = NEEDED_RMEM;

 if (!con)
  return -ENOMEM;

 log_print("Using SCTP for communications");

 result = sock_create_kern(dlm_local_addr[0]->ss_family, SOCK_SEQPACKET,
      IPPROTO_SCTP, &sock);
 if (result < 0) {
  log_print("Can't create comms socket, check SCTP is loaded");
  goto out;
 }


 memset(&subscribe, 0, sizeof(subscribe));
 subscribe.sctp_data_io_event = 1;
 subscribe.sctp_association_event = 1;
 subscribe.sctp_send_failure_event = 1;
 subscribe.sctp_shutdown_event = 1;
 subscribe.sctp_partial_delivery_event = 1;

 result = kernel_setsockopt(sock, SOL_SOCKET, SO_RCVBUFFORCE,
     (char *)&bufsize, sizeof(bufsize));
 if (result)
  log_print("Error increasing buffer space on socket %d", result);

 result = kernel_setsockopt(sock, SOL_SCTP, SCTP_EVENTS,
       (char *)&subscribe, sizeof(subscribe));
 if (result < 0) {
  log_print("Failed to set SCTP_EVENTS on socket: result=%d",
     result);
  goto create_delsock;
 }


 sock->sk->sk_user_data = con;
 con->sock = sock;
 con->sock->sk->sk_data_ready = lowcomms_data_ready;
 con->rx_action = receive_from_sock;
 con->connect_action = sctp_init_assoc;


 for (i = 0; i < dlm_local_count; i++) {
  memcpy(&localaddr, dlm_local_addr[i], sizeof(localaddr));
  make_sockaddr(&localaddr, dlm_config.ci_tcp_port, &addr_len);

  result = add_sctp_bind_addr(con, &localaddr, addr_len, num);
  if (result)
   goto create_delsock;
  ++num;
 }

 result = sock->ops->listen(sock, 5);
 if (result < 0) {
  log_print("Can't set socket listening");
  goto create_delsock;
 }

 return 0;

create_delsock:
 sock_release(sock);
 con->sock = ((void*)0);
out:
 return result;
}
