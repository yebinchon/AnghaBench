
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int dummy; } ;
struct connection {int dummy; } ;


 int EADDRINUSE ;
 int EINVAL ;
 int ENOMEM ;
 int GFP_NOFS ;
 int add_sock (struct socket*,struct connection*) ;
 int ** dlm_local_addr ;
 int log_print (char*) ;
 struct connection* nodeid2con (int ,int ) ;
 struct socket* tcp_create_listen_sock (struct connection*,int *) ;

__attribute__((used)) static int tcp_listen_for_all(void)
{
 struct socket *sock = ((void*)0);
 struct connection *con = nodeid2con(0, GFP_NOFS);
 int result = -EINVAL;

 if (!con)
  return -ENOMEM;


 if (dlm_local_addr[1] != ((void*)0)) {
  log_print("TCP protocol can't handle multi-homed hosts, "
     "try SCTP");
  return -EINVAL;
 }

 log_print("Using TCP for communications");

 sock = tcp_create_listen_sock(con, dlm_local_addr[0]);
 if (sock) {
  add_sock(sock, con);
  result = 0;
 }
 else {
  result = -EADDRINUSE;
 }

 return result;
}
