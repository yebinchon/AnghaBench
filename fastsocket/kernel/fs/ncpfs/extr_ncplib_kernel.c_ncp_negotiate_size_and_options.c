
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;


 int NCP_BLOCK_SIZE ;
 int min (int,int) ;
 int ncp_add_be16 (struct ncp_server*,int) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_reply_be16 (struct ncp_server*,int ) ;
 int ncp_reply_byte (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int
ncp_negotiate_size_and_options(struct ncp_server *server,
 int size, int options, int *ret_size, int *ret_options) {
 int result;


 if (size < NCP_BLOCK_SIZE) size = NCP_BLOCK_SIZE;

 ncp_init_request(server);
 ncp_add_be16(server, size);
 ncp_add_byte(server, options);

 if ((result = ncp_request(server, 0x61)) != 0)
 {
  ncp_unlock_server(server);
  return result;
 }


 result = ncp_reply_be16(server, 0);
 if (result >= NCP_BLOCK_SIZE)
  size = min(result, size);
 *ret_size = size;
 *ret_options = ncp_reply_byte(server, 4);

 ncp_unlock_server(server);
 return 0;
}
