
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct ncp_server {TYPE_2__* ncp_sock; int txbuf; } ;
struct ncp_request_reply {TYPE_1__* tx_iov; } ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int iov_base; int iov_len; } ;


 scalar_t__ SOCK_STREAM ;
 int memcpy (int ,int ,int ) ;
 int ncpdgram_start_request (struct ncp_server*,struct ncp_request_reply*) ;
 int ncptcp_start_request (struct ncp_server*,struct ncp_request_reply*) ;

__attribute__((used)) static inline void __ncp_start_request(struct ncp_server *server, struct ncp_request_reply *req)
{


 memcpy(server->txbuf, req->tx_iov[1].iov_base, req->tx_iov[1].iov_len);
 req->tx_iov[1].iov_base = server->txbuf;

 if (server->ncp_sock->type == SOCK_STREAM)
  ncptcp_start_request(server, req);
 else
  ncpdgram_start_request(server, req);
}
