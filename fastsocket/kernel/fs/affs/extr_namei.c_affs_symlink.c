
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u32 ;
struct super_block {int dummy; } ;
struct TYPE_6__ {int * a_ops; } ;
struct inode {int i_mode; scalar_t__ i_nlink; int i_ino; TYPE_2__ i_data; int * i_op; struct super_block* i_sb; } ;
struct TYPE_5__ {int name; scalar_t__ len; } ;
struct dentry {TYPE_1__ d_name; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {scalar_t__ table; } ;
struct TYPE_7__ {int s_hashsize; char* s_volume; } ;


 TYPE_4__* AFFS_HEAD (struct buffer_head*) ;
 TYPE_3__* AFFS_SB (struct super_block*) ;
 int EIO ;
 int ENOSPC ;
 int ST_SOFTLINK ;
 int S_IFLNK ;
 int affs_add_entry (struct inode*,struct inode*,struct dentry*,int ) ;
 struct buffer_head* affs_bread (struct super_block*,int ) ;
 int affs_brelse (struct buffer_head*) ;
 struct inode* affs_new_inode (struct inode*) ;
 int affs_symlink_aops ;
 int affs_symlink_inode_operations ;
 int iput (struct inode*) ;
 int mark_buffer_dirty_inode (struct buffer_head*,struct inode*) ;
 int mark_inode_dirty (struct inode*) ;
 int mode_to_prot (struct inode*) ;
 int pr_debug (char*,int ,int,int ,char const*) ;

int
affs_symlink(struct inode *dir, struct dentry *dentry, const char *symname)
{
 struct super_block *sb = dir->i_sb;
 struct buffer_head *bh;
 struct inode *inode;
 char *p;
 int i, maxlen, error;
 char c, lc;

 pr_debug("AFFS: symlink(%lu,\"%.*s\" -> \"%s\")\n",dir->i_ino,
   (int)dentry->d_name.len,dentry->d_name.name,symname);

 maxlen = AFFS_SB(sb)->s_hashsize * sizeof(u32) - 1;
 inode = affs_new_inode(dir);
 if (!inode)
  return -ENOSPC;

 inode->i_op = &affs_symlink_inode_operations;
 inode->i_data.a_ops = &affs_symlink_aops;
 inode->i_mode = S_IFLNK | 0777;
 mode_to_prot(inode);

 error = -EIO;
 bh = affs_bread(sb, inode->i_ino);
 if (!bh)
  goto err;
 i = 0;
 p = (char *)AFFS_HEAD(bh)->table;
 lc = '/';
 if (*symname == '/') {
  while (*symname == '/')
   symname++;
  while (AFFS_SB(sb)->s_volume[i])
   *p++ = AFFS_SB(sb)->s_volume[i++];
 }
 while (i < maxlen && (c = *symname++)) {
  if (c == '.' && lc == '/' && *symname == '.' && symname[1] == '/') {
   *p++ = '/';
   i++;
   symname += 2;
   lc = '/';
  } else if (c == '.' && lc == '/' && *symname == '/') {
   symname++;
   lc = '/';
  } else {
   *p++ = c;
   lc = c;
   i++;
  }
  if (lc == '/')
   while (*symname == '/')
    symname++;
 }
 *p = 0;
 mark_buffer_dirty_inode(bh, inode);
 affs_brelse(bh);
 mark_inode_dirty(inode);

 error = affs_add_entry(dir, inode, dentry, ST_SOFTLINK);
 if (error)
  goto err;

 return 0;

err:
 inode->i_nlink = 0;
 mark_inode_dirty(inode);
 iput(inode);
 return error;
}
