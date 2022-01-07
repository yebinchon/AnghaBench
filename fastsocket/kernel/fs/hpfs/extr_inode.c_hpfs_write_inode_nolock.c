
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct quad_buffer_head {int dummy; } ;
struct TYPE_7__ {int tv_sec; } ;
struct TYPE_6__ {int tv_sec; } ;
struct TYPE_5__ {int tv_sec; } ;
struct inode {scalar_t__ i_ino; int i_mode; int i_sb; TYPE_3__ i_ctime; TYPE_2__ i_atime; TYPE_1__ i_mtime; scalar_t__ i_size; scalar_t__ i_nlink; } ;
struct hpfs_inode_info {int i_dno; scalar_t__ i_ea_size; } ;
struct hpfs_dirent {int read_only; scalar_t__ file_size; scalar_t__ ea_size; void* creation_date; void* read_date; void* write_date; } ;
struct fnode {scalar_t__ file_size; } ;
struct buffer_head {int dummy; } ;
struct TYPE_8__ {scalar_t__ sb_root; } ;


 scalar_t__ S_ISDIR (int) ;
 scalar_t__ S_ISREG (int) ;
 int brelse (struct buffer_head*) ;
 void* gmt_to_local (int ,int ) ;
 int hpfs_brelse4 (struct quad_buffer_head*) ;
 int hpfs_error (int ,char*,unsigned long) ;
 struct hpfs_inode_info* hpfs_i (struct inode*) ;
 struct fnode* hpfs_map_fnode (int ,scalar_t__,struct buffer_head**) ;
 int hpfs_mark_4buffers_dirty (struct quad_buffer_head*) ;
 TYPE_4__* hpfs_sb (int ) ;
 int hpfs_write_inode_ea (struct inode*,struct fnode*) ;
 struct hpfs_dirent* map_dirent (struct inode*,int ,char*,int,int *,struct quad_buffer_head*) ;
 struct hpfs_dirent* map_fnode_dirent (int ,scalar_t__,struct fnode*,struct quad_buffer_head*) ;
 int mark_buffer_dirty (struct buffer_head*) ;

void hpfs_write_inode_nolock(struct inode *i)
{
 struct hpfs_inode_info *hpfs_inode = hpfs_i(i);
 struct buffer_head *bh;
 struct fnode *fnode;
 struct quad_buffer_head qbh;
 struct hpfs_dirent *de;
 if (i->i_ino == hpfs_sb(i->i_sb)->sb_root) return;
 if (!(fnode = hpfs_map_fnode(i->i_sb, i->i_ino, &bh))) return;
 if (i->i_ino != hpfs_sb(i->i_sb)->sb_root && i->i_nlink) {
  if (!(de = map_fnode_dirent(i->i_sb, i->i_ino, fnode, &qbh))) {
   brelse(bh);
   return;
  }
 } else de = ((void*)0);
 if (S_ISREG(i->i_mode)) {
  fnode->file_size = i->i_size;
  if (de) de->file_size = i->i_size;
 } else if (S_ISDIR(i->i_mode)) {
  fnode->file_size = 0;
  if (de) de->file_size = 0;
 }
 hpfs_write_inode_ea(i, fnode);
 if (de) {
  de->write_date = gmt_to_local(i->i_sb, i->i_mtime.tv_sec);
  de->read_date = gmt_to_local(i->i_sb, i->i_atime.tv_sec);
  de->creation_date = gmt_to_local(i->i_sb, i->i_ctime.tv_sec);
  de->read_only = !(i->i_mode & 0222);
  de->ea_size = hpfs_inode->i_ea_size;
  hpfs_mark_4buffers_dirty(&qbh);
  hpfs_brelse4(&qbh);
 }
 if (S_ISDIR(i->i_mode)) {
  if ((de = map_dirent(i, hpfs_inode->i_dno, "\001\001", 2, ((void*)0), &qbh))) {
   de->write_date = gmt_to_local(i->i_sb, i->i_mtime.tv_sec);
   de->read_date = gmt_to_local(i->i_sb, i->i_atime.tv_sec);
   de->creation_date = gmt_to_local(i->i_sb, i->i_ctime.tv_sec);
   de->read_only = !(i->i_mode & 0222);
   de->ea_size = 0;
   de->file_size = 0;
   hpfs_mark_4buffers_dirty(&qbh);
   hpfs_brelse4(&qbh);
  } else
   hpfs_error(i->i_sb,
    "directory %08lx doesn't have '.' entry",
    (unsigned long)i->i_ino);
 }
 mark_buffer_dirty(bh);
 brelse(bh);
}
