
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u8 ;
typedef int __le32 ;


 int NW_NS_DOS ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_handle_path (struct ncp_server*,int ,int ,int,int *) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_reply_byte (struct ncp_server*,int ) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int ncp_dirhandle_alloc(struct ncp_server* server, __u8 volnum, __le32 dirent,
   __u8* dirhandle) {
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 12);
 ncp_add_byte(server, NW_NS_DOS);
 ncp_add_byte(server, 0);
 ncp_add_word(server, 0);
 ncp_add_handle_path(server, volnum, dirent, 1, ((void*)0));
 if ((result = ncp_request(server, 87)) == 0) {
  *dirhandle = ncp_reply_byte(server, 0);
 }
 ncp_unlock_server(server);
 return result;
}
