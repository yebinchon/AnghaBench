
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int connection; scalar_t__ sequence; } ;
struct ncp_request_reply {int status; } ;
struct ncp_request_header {int conn_low; int conn_high; scalar_t__ sequence; } ;


 int RQ_INPROGRESS ;

__attribute__((used)) static inline void ncp_init_header(struct ncp_server *server, struct ncp_request_reply *req, struct ncp_request_header *h)
{
 req->status = RQ_INPROGRESS;
 h->conn_low = server->connection;
 h->conn_high = server->connection >> 8;
 h->sequence = ++server->sequence;
}
