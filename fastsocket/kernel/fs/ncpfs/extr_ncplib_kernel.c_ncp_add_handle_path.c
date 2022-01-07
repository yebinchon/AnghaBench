
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u8 ;
typedef int __le32 ;


 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_dword (struct ncp_server*,int ) ;
 int ncp_add_pstring (struct ncp_server*,char const*) ;

__attribute__((used)) static void ncp_add_handle_path(struct ncp_server *server, __u8 vol_num,
    __le32 dir_base, int have_dir_base,
    const char *path)
{
 ncp_add_byte(server, vol_num);
 ncp_add_dword(server, dir_base);
 if (have_dir_base != 0) {
  ncp_add_byte(server, 1);
 } else {
  ncp_add_byte(server, 0xff);
 }
 if (path != ((void*)0)) {
  ncp_add_byte(server, 1);
  ncp_add_pstring(server, path);
 } else {
  ncp_add_byte(server, 0);
 }
}
