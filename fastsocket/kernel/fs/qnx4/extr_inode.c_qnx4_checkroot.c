
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct super_block {int s_id; } ;
struct qnx4_inode_entry {int * di_fname; } ;
struct buffer_head {scalar_t__ b_data; } ;
struct TYPE_8__ {int BitMap; TYPE_3__* sb; } ;
struct TYPE_5__ {int xtnt_size; int xtnt_blk; } ;
struct TYPE_6__ {char* di_fname; TYPE_1__ di_first_xtnt; } ;
struct TYPE_7__ {TYPE_2__ RootDir; } ;


 int GFP_KERNEL ;
 int QNX4DEBUG (char*) ;
 int QNX4_BMNAME ;
 int QNX4_DIR_ENTRY_SIZE ;
 int QNX4_INODES_PER_BLOCK ;
 int brelse (struct buffer_head*) ;
 int kmalloc (int,int ) ;
 int le32_to_cpu (int ) ;
 int memcpy (int ,struct qnx4_inode_entry*,int) ;
 TYPE_4__* qnx4_sb (struct super_block*) ;
 struct buffer_head* sb_bread (struct super_block*,int) ;
 int strncmp (int *,int ,int) ;

__attribute__((used)) static const char *qnx4_checkroot(struct super_block *sb)
{
 struct buffer_head *bh;
 struct qnx4_inode_entry *rootdir;
 int rd, rl;
 int i, j;
 int found = 0;

 if (*(qnx4_sb(sb)->sb->RootDir.di_fname) != '/') {
  return "no qnx4 filesystem (no root dir).";
 } else {
  QNX4DEBUG(("QNX4 filesystem found on dev %s.\n", sb->s_id));
  rd = le32_to_cpu(qnx4_sb(sb)->sb->RootDir.di_first_xtnt.xtnt_blk) - 1;
  rl = le32_to_cpu(qnx4_sb(sb)->sb->RootDir.di_first_xtnt.xtnt_size);
  for (j = 0; j < rl; j++) {
   bh = sb_bread(sb, rd + j);
   if (bh == ((void*)0)) {
    return "unable to read root entry.";
   }
   for (i = 0; i < QNX4_INODES_PER_BLOCK; i++) {
    rootdir = (struct qnx4_inode_entry *) (bh->b_data + i * QNX4_DIR_ENTRY_SIZE);
    if (rootdir->di_fname != ((void*)0)) {
     QNX4DEBUG(("Rootdir entry found : [%s]\n", rootdir->di_fname));
     if (!strncmp(rootdir->di_fname, QNX4_BMNAME, sizeof QNX4_BMNAME)) {
      found = 1;
      qnx4_sb(sb)->BitMap = kmalloc( sizeof( struct qnx4_inode_entry ), GFP_KERNEL );
      if (!qnx4_sb(sb)->BitMap) {
       brelse (bh);
       return "not enough memory for bitmap inode";
      }
      memcpy( qnx4_sb(sb)->BitMap, rootdir, sizeof( struct qnx4_inode_entry ) );
      break;
     }
    }
   }
   brelse(bh);
   if (found != 0) {
    break;
   }
  }
  if (found == 0) {
   return "bitmap file not found.";
  }
 }
 return ((void*)0);
}
