
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int connection; int sequence; int packet_size; scalar_t__ packet; } ;
struct ncp_request_header {int task; int conn_low; int conn_high; scalar_t__ function; int type; } ;


 int NCP_ALLOC_SLOT_REQUEST ;
 int ncp_do_request (struct ncp_server*,int,scalar_t__,int ) ;

int ncp_connect(struct ncp_server *server)
{
 struct ncp_request_header *h;
 int result;

 server->connection = 0xFFFF;
 server->sequence = 255;

 h = (struct ncp_request_header *) (server->packet);
 h->type = NCP_ALLOC_SLOT_REQUEST;
 h->task = 2;
 h->function = 0;

 result = ncp_do_request(server, sizeof(*h), server->packet, server->packet_size);
 if (result < 0)
  goto out;
 server->connection = h->conn_low + (h->conn_high * 256);
 result = 0;
out:
 return result;
}
