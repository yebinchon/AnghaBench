
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u32 ;
typedef int __u16 ;


 int memcpy (char*,char*,int) ;
 int ncp_add_be16 (struct ncp_server*,int ) ;
 int ncp_add_be32 (struct ncp_server*,int) ;
 int ncp_add_byte (struct ncp_server*,int ) ;
 int ncp_add_mem (struct ncp_server*,char const*,int) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_reply_be16 (struct ncp_server*,int ) ;
 char* ncp_reply_data (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int
ncp_read_kernel(struct ncp_server *server, const char *file_id,
      __u32 offset, __u16 to_read, char *target, int *bytes_read)
{
 char *source;
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 0);
 ncp_add_mem(server, file_id, 6);
 ncp_add_be32(server, offset);
 ncp_add_be16(server, to_read);

 if ((result = ncp_request(server, 72)) != 0) {
  goto out;
 }
 *bytes_read = ncp_reply_be16(server, 0);
 source = ncp_reply_data(server, 2 + (offset & 1));

 memcpy(target, source, *bytes_read);
out:
 ncp_unlock_server(server);
 return result;
}
