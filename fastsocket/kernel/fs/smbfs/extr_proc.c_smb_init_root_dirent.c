
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {int dummy; } ;
struct smb_sb_info {int dummy; } ;
struct smb_fattr {int f_ino; int f_mtime; int attr; } ;


 int aDIR ;
 int current_fs_time (struct super_block*) ;
 int smb_finish_dirent (struct smb_sb_info*,struct smb_fattr*) ;
 int smb_init_dirent (struct smb_sb_info*,struct smb_fattr*) ;

void
smb_init_root_dirent(struct smb_sb_info *server, struct smb_fattr *fattr,
       struct super_block *sb)
{
 smb_init_dirent(server, fattr);
 fattr->attr = aDIR;
 fattr->f_ino = 2;
 fattr->f_mtime = current_fs_time(sb);
 smb_finish_dirent(server, fattr);
}
