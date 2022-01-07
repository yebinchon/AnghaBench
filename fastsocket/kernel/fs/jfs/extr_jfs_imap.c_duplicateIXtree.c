
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tid_t ;
struct super_block {int dummy; } ;
struct jfs_superblock {int s_flag; } ;
struct inode {int i_size; } ;
struct buffer_head {scalar_t__ b_data; } ;
typedef int s64 ;
struct TYPE_2__ {int mntflag; } ;


 int COMMIT_FORCE ;
 int FILESYSTEM_I ;
 int JFS_BAD_SAIT ;
 TYPE_1__* JFS_SBI (struct super_block*) ;
 scalar_t__ PSIZE ;
 int brelse (struct buffer_head*) ;
 int cpu_to_le32 (int) ;
 int diFreeSpecial (struct inode*) ;
 struct inode* diReadSpecial (struct super_block*,int ,int) ;
 int inode_add_bytes (struct inode*,scalar_t__) ;
 int mark_buffer_dirty (struct buffer_head*) ;
 scalar_t__ readSuper (struct super_block*,struct buffer_head**) ;
 int sync_dirty_buffer (struct buffer_head*) ;
 int txAbort (int ,int) ;
 int txBegin (struct super_block*,int ) ;
 int txCommit (int ,int,struct inode**,int ) ;
 int txEnd (int ) ;
 scalar_t__ xtInsert (int ,struct inode*,int ,int ,int,int *,int ) ;

__attribute__((used)) static void duplicateIXtree(struct super_block *sb, s64 blkno,
       int xlen, s64 *xaddr)
{
 struct jfs_superblock *j_sb;
 struct buffer_head *bh;
 struct inode *ip;
 tid_t tid;


 if (JFS_SBI(sb)->mntflag & JFS_BAD_SAIT)
  return;
 ip = diReadSpecial(sb, FILESYSTEM_I, 1);
 if (ip == ((void*)0)) {
  JFS_SBI(sb)->mntflag |= JFS_BAD_SAIT;
  if (readSuper(sb, &bh))
   return;
  j_sb = (struct jfs_superblock *)bh->b_data;
  j_sb->s_flag |= cpu_to_le32(JFS_BAD_SAIT);

  mark_buffer_dirty(bh);
  sync_dirty_buffer(bh);
  brelse(bh);
  return;
 }


 tid = txBegin(sb, COMMIT_FORCE);

 if (xtInsert(tid, ip, 0, blkno, xlen, xaddr, 0)) {
  JFS_SBI(sb)->mntflag |= JFS_BAD_SAIT;
  txAbort(tid, 1);
  goto cleanup;

 }

 ip->i_size += PSIZE;
 inode_add_bytes(ip, PSIZE);
 txCommit(tid, 1, &ip, COMMIT_FORCE);
      cleanup:
 txEnd(tid);
 diFreeSpecial(ip);
}
