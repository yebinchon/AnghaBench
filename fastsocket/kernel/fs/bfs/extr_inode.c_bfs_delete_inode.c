
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct super_block {char* s_id; } ;
struct inode {unsigned long i_ino; struct super_block* i_sb; int i_ctime; int i_mtime; int i_atime; scalar_t__ i_size; int i_data; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct bfs_sb_info {unsigned long si_lasti; scalar_t__ si_lf_eblk; int bfs_lock; struct buffer_head* si_sbh; int si_imap; int si_freei; int si_freeb; } ;
struct bfs_inode_info {scalar_t__ i_sblock; scalar_t__ i_eblock; scalar_t__ i_dsk_ino; } ;
struct bfs_inode {int dummy; } ;


 struct bfs_inode_info* BFS_I (struct inode*) ;
 unsigned long BFS_INODES_PER_BLOCK ;
 unsigned long BFS_ROOT_INO ;
 struct bfs_sb_info* BFS_SB (struct super_block*) ;
 int CURRENT_TIME_SEC ;
 int brelse (struct buffer_head*) ;
 int clear_bit (unsigned long,int ) ;
 int clear_inode (struct inode*) ;
 int dprintf (char*,unsigned long) ;
 int dump_imap (char*,struct super_block*) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 int mark_inode_dirty (struct inode*) ;
 int memset (void*,int ,int) ;
 int mutex_lock (int *) ;
 int mutex_unlock (int *) ;
 int printf (char*,...) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int truncate_inode_pages (int *,int ) ;

__attribute__((used)) static void bfs_delete_inode(struct inode *inode)
{
 unsigned long ino = inode->i_ino;
 struct bfs_inode *di;
 struct buffer_head *bh;
 int block, off;
 struct super_block *s = inode->i_sb;
 struct bfs_sb_info *info = BFS_SB(s);
 struct bfs_inode_info *bi = BFS_I(inode);

 dprintf("ino=%08lx\n", ino);

 truncate_inode_pages(&inode->i_data, 0);

 if ((ino < BFS_ROOT_INO) || (ino > info->si_lasti)) {
  printf("invalid ino=%08lx\n", ino);
  return;
 }

 inode->i_size = 0;
 inode->i_atime = inode->i_mtime = inode->i_ctime = CURRENT_TIME_SEC;
 mutex_lock(&info->bfs_lock);
 mark_inode_dirty(inode);

 block = (ino - BFS_ROOT_INO) / BFS_INODES_PER_BLOCK + 1;
 bh = sb_bread(s, block);
 if (!bh) {
  printf("Unable to read inode %s:%08lx\n",
     inode->i_sb->s_id, ino);
  mutex_unlock(&info->bfs_lock);
  return;
 }
 off = (ino - BFS_ROOT_INO) % BFS_INODES_PER_BLOCK;
 di = (struct bfs_inode *)bh->b_data + off;
 memset((void *)di, 0, sizeof(struct bfs_inode));
 mark_buffer_dirty(bh);
 brelse(bh);

        if (bi->i_dsk_ino) {
  if (bi->i_sblock)
   info->si_freeb += bi->i_eblock + 1 - bi->i_sblock;
  info->si_freei++;
  clear_bit(ino, info->si_imap);
  dump_imap("delete_inode", s);
        }






 if (info->si_lf_eblk == bi->i_eblock) {
  info->si_lf_eblk = bi->i_sblock - 1;
  mark_buffer_dirty(info->si_sbh);
 }
 mutex_unlock(&info->bfs_lock);
 clear_inode(inode);
}
