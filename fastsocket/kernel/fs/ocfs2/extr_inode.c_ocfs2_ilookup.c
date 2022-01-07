
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct super_block {int dummy; } ;
struct ocfs2_find_inode_args {scalar_t__ fi_sysfile_type; int fi_ino; scalar_t__ fi_flags; int fi_blkno; } ;
struct inode {int dummy; } ;


 struct inode* ilookup5 (struct super_block*,int ,int ,struct ocfs2_find_inode_args*) ;
 int ino_from_blkno (struct super_block*,int ) ;
 int ocfs2_find_actor ;

struct inode *ocfs2_ilookup(struct super_block *sb, u64 blkno)
{
 struct ocfs2_find_inode_args args;

 args.fi_blkno = blkno;
 args.fi_flags = 0;
 args.fi_ino = ino_from_blkno(sb, blkno);
 args.fi_sysfile_type = 0;

 return ilookup5(sb, blkno, ocfs2_find_actor, &args);
}
