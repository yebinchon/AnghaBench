
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
typedef int __u8 ;
typedef int __le32 ;


 int RIM_ALL ;
 int cpu_to_le16 (int) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_dword (struct ncp_server*,int ) ;
 int ncp_add_handle_path (struct ncp_server*,int,int ,int,char*) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_reply_dword (struct ncp_server*,int) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

__attribute__((used)) static int
ncp_ObtainSpecificDirBase(struct ncp_server *server,
  __u8 nsSrc, __u8 nsDst, __u8 vol_num, __le32 dir_base,
  char *path,
  __le32 *dirEntNum, __le32 *DosDirNum)
{
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 6);
 ncp_add_byte(server, nsSrc);
 ncp_add_byte(server, nsDst);
 ncp_add_word(server, cpu_to_le16(0x8006));
 ncp_add_dword(server, RIM_ALL);
 ncp_add_handle_path(server, vol_num, dir_base, 1, path);

 if ((result = ncp_request(server, 87)) != 0)
 {
  ncp_unlock_server(server);
  return result;
 }

 if (dirEntNum)
  *dirEntNum = ncp_reply_dword(server, 0x30);
 if (DosDirNum)
  *DosDirNum = ncp_reply_dword(server, 0x34);
 ncp_unlock_server(server);
 return 0;
}
