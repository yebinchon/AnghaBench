
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct metapage {scalar_t__ data; } ;
struct jfs_sb_info {unsigned long l2nbperpage; int nbperpage; int l2niperblk; struct inode* ipimap; } ;
struct inomap {scalar_t__ im_nbperiext; } ;
struct inode {int i_ino; int i_sb; } ;
struct iag {int agstart; int * inoext; } ;
struct dinode {int di_nlink; int di_number; } ;
typedef unsigned long s64 ;
struct TYPE_2__ {int active_ag; int agno; struct inomap* i_imap; struct inode* ipimap; } ;


 int BLKTOAG (unsigned long,struct jfs_sb_info*) ;
 int EIO ;
 int ESTALE ;
 unsigned long INOPBLK (int *,int,unsigned long) ;
 int INOSPERIAG ;
 int INOSPERPAGE ;
 int INOTOIAG (int) ;
 int IREAD_LOCK (struct inode*,int ) ;
 int IREAD_UNLOCK (struct inode*) ;
 TYPE_1__* JFS_IP (struct inode*) ;
 struct jfs_sb_info* JFS_SBI (int ) ;
 int L2INOSPEREXT ;
 int PSIZE ;
 int RDWRLOCK_IMAP ;
 scalar_t__ addressPXD (int *) ;
 int copy_from_dinode (struct dinode*,struct inode*) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int jfs_err (char*,...) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,int) ;
 int le32_to_cpu (int ) ;
 unsigned long le64_to_cpu (int ) ;
 scalar_t__ lengthPXD (int *) ;
 struct metapage* read_metapage (struct inode*,unsigned long,int ,int) ;
 int release_metapage (struct metapage*) ;

int diRead(struct inode *ip)
{
 struct jfs_sb_info *sbi = JFS_SBI(ip->i_sb);
 int iagno, ino, extno, rc;
 struct inode *ipimap;
 struct dinode *dp;
 struct iag *iagp;
 struct metapage *mp;
 s64 blkno, agstart;
 struct inomap *imap;
 int block_offset;
 int inodes_left;
 unsigned long pageno;
 int rel_inode;

 jfs_info("diRead: ino = %ld", ip->i_ino);

 ipimap = sbi->ipimap;
 JFS_IP(ip)->ipimap = ipimap;


 iagno = INOTOIAG(ip->i_ino);


 imap = JFS_IP(ipimap)->i_imap;
 IREAD_LOCK(ipimap, RDWRLOCK_IMAP);
 rc = diIAGRead(imap, iagno, &mp);
 IREAD_UNLOCK(ipimap);
 if (rc) {
  jfs_err("diRead: diIAGRead returned %d", rc);
  return (rc);
 }

 iagp = (struct iag *) mp->data;


 ino = ip->i_ino & (INOSPERIAG - 1);
 extno = ino >> L2INOSPEREXT;

 if ((lengthPXD(&iagp->inoext[extno]) != imap->im_nbperiext) ||
     (addressPXD(&iagp->inoext[extno]) == 0)) {
  release_metapage(mp);
  return -ESTALE;
 }




 blkno = INOPBLK(&iagp->inoext[extno], ino, sbi->l2nbperpage);


 agstart = le64_to_cpu(iagp->agstart);

 release_metapage(mp);

 rel_inode = (ino & (INOSPERPAGE - 1));
 pageno = blkno >> sbi->l2nbperpage;

 if ((block_offset = ((u32) blkno & (sbi->nbperpage - 1)))) {



  inodes_left =
       (sbi->nbperpage - block_offset) << sbi->l2niperblk;

  if (rel_inode < inodes_left)
   rel_inode += block_offset << sbi->l2niperblk;
  else {
   pageno += 1;
   rel_inode -= inodes_left;
  }
 }


 mp = read_metapage(ipimap, pageno << sbi->l2nbperpage, PSIZE, 1);
 if (!mp) {
  jfs_err("diRead: read_metapage failed");
  return -EIO;
 }


 dp = (struct dinode *) mp->data;
 dp += rel_inode;

 if (ip->i_ino != le32_to_cpu(dp->di_number)) {
  jfs_error(ip->i_sb, "diRead: i_ino != di_number");
  rc = -EIO;
 } else if (le32_to_cpu(dp->di_nlink) == 0)
  rc = -ESTALE;
 else

  rc = copy_from_dinode(dp, ip);

 release_metapage(mp);


 JFS_IP(ip)->agno = BLKTOAG(agstart, sbi);
 JFS_IP(ip)->active_ag = -1;

 return (rc);
}
