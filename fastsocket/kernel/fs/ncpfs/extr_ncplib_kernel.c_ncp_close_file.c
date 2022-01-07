
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;


 int ncp_add_byte (struct ncp_server*,int ) ;
 int ncp_add_mem (struct ncp_server*,char const*,int) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int
ncp_close_file(struct ncp_server *server, const char *file_id)
{
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 0);
 ncp_add_mem(server, file_id, 6);

 result = ncp_request(server, 66);
 ncp_unlock_server(server);
 return result;
}
