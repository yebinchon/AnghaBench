
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u8 ;
typedef int __le32 ;
typedef int __le16 ;


 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_handle_path (struct ncp_server*,int,int ,int,char*) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

__attribute__((used)) static int
ncp_DeleteNSEntry(struct ncp_server *server,
    __u8 have_dir_base, __u8 volnum, __le32 dirent,
    char* name, __u8 ns, __le16 attr)
{
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 8);
 ncp_add_byte(server, ns);
 ncp_add_byte(server, 0);
 ncp_add_word(server, attr);
 ncp_add_handle_path(server, volnum, dirent, have_dir_base, name);

 result = ncp_request(server, 87);
 ncp_unlock_server(server);
 return result;
}
