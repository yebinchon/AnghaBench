
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u8 ;


 int ncp_add_byte (struct ncp_server*,int ) ;
 int ncp_init_request_s (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int ncp_dirhandle_free(struct ncp_server* server, __u8 dirhandle) {
 int result;

 ncp_init_request_s(server, 20);
 ncp_add_byte(server, dirhandle);
 result = ncp_request(server, 22);
 ncp_unlock_server(server);
 return result;
}
