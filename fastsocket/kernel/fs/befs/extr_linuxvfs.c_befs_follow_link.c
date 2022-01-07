
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct super_block {int dummy; } ;
struct nameidata {int dummy; } ;
struct dentry {struct super_block* d_sb; int d_inode; } ;
typedef int befs_off_t ;
struct TYPE_8__ {int size; } ;
struct TYPE_6__ {char* symlink; TYPE_3__ ds; } ;
struct TYPE_7__ {int i_flags; TYPE_1__ i_data; } ;
typedef TYPE_2__ befs_inode_info ;
typedef TYPE_3__ befs_data_stream ;


 TYPE_2__* BEFS_I (int ) ;
 int BEFS_LONG_SYMLINK ;
 int EIO ;
 int ENOMEM ;
 char* ERR_PTR (int ) ;
 int GFP_NOFS ;
 int befs_debug (struct super_block*,char*) ;
 int befs_error (struct super_block*,char*) ;
 int befs_read_lsymlink (struct super_block*,TYPE_3__*,char*,int) ;
 int kfree (char*) ;
 char* kmalloc (int,int ) ;
 int nd_set_link (struct nameidata*,char*) ;

__attribute__((used)) static void *
befs_follow_link(struct dentry *dentry, struct nameidata *nd)
{
 befs_inode_info *befs_ino = BEFS_I(dentry->d_inode);
 char *link;

 if (befs_ino->i_flags & BEFS_LONG_SYMLINK) {
  struct super_block *sb = dentry->d_sb;
  befs_data_stream *data = &befs_ino->i_data.ds;
  befs_off_t len = data->size;

  befs_debug(sb, "Follow long symlink");

  link = kmalloc(len, GFP_NOFS);
  if (!link) {
   link = ERR_PTR(-ENOMEM);
  } else if (befs_read_lsymlink(sb, data, link, len) != len) {
   kfree(link);
   befs_error(sb, "Failed to read entire long symlink");
   link = ERR_PTR(-EIO);
  } else {
   link[len - 1] = '\0';
  }
 } else {
  link = befs_ino->i_data.symlink;
 }

 nd_set_link(nd, link);
 return ((void*)0);
}
