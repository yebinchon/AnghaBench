
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int current_size; scalar_t__ has_subfunction; } ;
struct ncp_request_header {int dummy; } ;


 int ncp_lock_server (struct ncp_server*) ;

__attribute__((used)) static inline void ncp_init_request(struct ncp_server *server)
{
 ncp_lock_server(server);

 server->current_size = sizeof(struct ncp_request_header);
 server->has_subfunction = 0;
}
