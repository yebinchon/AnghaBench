
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct nw_modify_dos_info {int dummy; } ;
struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
typedef int __le32 ;


 int ncp_modify_file_or_subdir_dos_info_path (struct ncp_server*,struct inode*,int *,int ,struct nw_modify_dos_info const*) ;

int ncp_modify_file_or_subdir_dos_info(struct ncp_server *server,
           struct inode *dir,
           __le32 info_mask,
           const struct nw_modify_dos_info *info)
{
 return ncp_modify_file_or_subdir_dos_info_path(server, dir, ((void*)0),
  info_mask, info);
}
