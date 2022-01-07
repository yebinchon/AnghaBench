
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ncp_server {int dummy; } ;
struct inode {int dummy; } ;
typedef int __le16 ;


 int EACCES ;
 int cpu_to_le16 (int) ;
 int ncp_RenameNSEntry (struct ncp_server*,struct inode*,char*,int ,struct inode*,char*) ;
 int ncp_del_file_or_subdir (struct ncp_server*,struct inode*,char*) ;

int ncp_ren_or_mov_file_or_subdir(struct ncp_server *server,
    struct inode *old_dir, char *old_name,
    struct inode *new_dir, char *new_name)
{
        int result;
        __le16 old_type = cpu_to_le16(0x06);


 result = ncp_RenameNSEntry(server, old_dir, old_name, old_type,
                                    new_dir, new_name);
        if (result == 0xFF)
 {
  old_type = cpu_to_le16(0x16);
  result = ncp_RenameNSEntry(server, old_dir, old_name, old_type,
         new_dir, new_name);
 }
 if (result != 0x92) return result;
 result = ncp_del_file_or_subdir(server, new_dir, new_name);
 if (result != 0) return -EACCES;
 result = ncp_RenameNSEntry(server, old_dir, old_name, old_type,
        new_dir, new_name);
 return result;
}
