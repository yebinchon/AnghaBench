
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct vfsmount {TYPE_2__* mnt_sb; } ;
struct seq_file {int dummy; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {char* host_filename; } ;
struct TYPE_5__ {TYPE_1__* s_root; } ;
struct TYPE_4__ {struct inode* d_inode; } ;


 TYPE_3__* HOSTFS_I (struct inode*) ;
 char const* root_ino ;
 int seq_printf (struct seq_file*,char*,char const*) ;
 size_t strlen (char const*) ;

__attribute__((used)) static int hostfs_show_options(struct seq_file *seq, struct vfsmount *vfs)
{
 struct inode *root = vfs->mnt_sb->s_root->d_inode;
 const char *root_path = HOSTFS_I(root)->host_filename;
 size_t offset = strlen(root_ino) + 1;

 if (strlen(root_path) > offset)
  seq_printf(seq, ",%s", root_path + offset);

 return 0;
}
