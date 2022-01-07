
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int packet_size; scalar_t__ packet; } ;
struct ncp_request_header {int task; scalar_t__ function; int type; } ;


 int NCP_DEALLOC_SLOT_REQUEST ;
 int ncp_do_request (struct ncp_server*,int,scalar_t__,int ) ;

int ncp_disconnect(struct ncp_server *server)
{
 struct ncp_request_header *h;

 h = (struct ncp_request_header *) (server->packet);
 h->type = NCP_DEALLOC_SLOT_REQUEST;
 h->task = 2;
 h->function = 0;

 return ncp_do_request(server, sizeof(*h), server->packet, server->packet_size);
}
