
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct nw_modify_dos_info {int dummy; } ;
struct ncp_server {int* name_space; } ;
struct inode {int dummy; } ;
typedef size_t __u8 ;
typedef int __le32 ;
struct TYPE_2__ {size_t volNumber; int dirEntNum; } ;


 TYPE_1__* NCP_FINFO (struct inode*) ;
 int cpu_to_le16 (int) ;
 int ncp_add_byte (struct ncp_server*,int) ;
 int ncp_add_dword (struct ncp_server*,int ) ;
 int ncp_add_handle_path (struct ncp_server*,size_t,int ,int,char const*) ;
 int ncp_add_mem (struct ncp_server*,struct nw_modify_dos_info const*,int) ;
 int ncp_add_word (struct ncp_server*,int ) ;
 int ncp_init_request (struct ncp_server*) ;
 int ncp_request (struct ncp_server*,int) ;
 int ncp_unlock_server (struct ncp_server*) ;

int ncp_modify_file_or_subdir_dos_info_path(struct ncp_server *server,
         struct inode *dir,
         const char *path,
         __le32 info_mask,
         const struct nw_modify_dos_info *info)
{
 __u8 volnum = NCP_FINFO(dir)->volNumber;
 __le32 dirent = NCP_FINFO(dir)->dirEntNum;
 int result;

 ncp_init_request(server);
 ncp_add_byte(server, 7);
 ncp_add_byte(server, server->name_space[volnum]);
 ncp_add_byte(server, 0);
 ncp_add_word(server, cpu_to_le16(0x8006));

 ncp_add_dword(server, info_mask);
 ncp_add_mem(server, info, sizeof(*info));
 ncp_add_handle_path(server, volnum, dirent, 1, path);

 result = ncp_request(server, 87);
 ncp_unlock_server(server);
 return result;
}
