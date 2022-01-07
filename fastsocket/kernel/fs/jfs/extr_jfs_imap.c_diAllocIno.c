
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inomap {int im_ipimap; TYPE_1__* im_agctl; } ;
struct inode {int i_sb; } ;
struct iag {int* inosmap; int* wmap; int nfreeinos; } ;
struct TYPE_2__ {int inofree; } ;


 int EIO ;
 int ENOSPC ;
 int EXTSPERSUM ;
 int INOSPEREXT ;
 int IREAD_LOCK (int ,int ) ;
 int IREAD_UNLOCK (int ) ;
 int L2EXTSPERSUM ;
 int L2INOSPEREXT ;
 int RDWRLOCK_IMAP ;
 int SMAPSZ ;
 int diAllocBit (struct inomap*,struct iag*,int) ;
 int diFindFree (int ,int ) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int diInitInode (struct inode*,int,int,int,struct iag*) ;
 int jfs_error (int ,char*) ;
 int le32_to_cpu (int) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

__attribute__((used)) static int diAllocIno(struct inomap * imap, int agno, struct inode *ip)
{
 int iagno, ino, rc, rem, extno, sword;
 struct metapage *mp;
 struct iag *iagp;



 if ((iagno = imap->im_agctl[agno].inofree) < 0)
  return -ENOSPC;


 IREAD_LOCK(imap->im_ipimap, RDWRLOCK_IMAP);



 if ((rc = diIAGRead(imap, iagno, &mp))) {
  IREAD_UNLOCK(imap->im_ipimap);
  return (rc);
 }
 iagp = (struct iag *) mp->data;




 if (!iagp->nfreeinos) {
  IREAD_UNLOCK(imap->im_ipimap);
  release_metapage(mp);
  jfs_error(ip->i_sb,
     "diAllocIno: nfreeinos = 0, but iag on freelist");
  return -EIO;
 }




 for (sword = 0;; sword++) {
  if (sword >= SMAPSZ) {
   IREAD_UNLOCK(imap->im_ipimap);
   release_metapage(mp);
   jfs_error(ip->i_sb,
      "diAllocIno: free inode not found in summary map");
   return -EIO;
  }

  if (~iagp->inosmap[sword])
   break;
 }




 rem = diFindFree(le32_to_cpu(iagp->inosmap[sword]), 0);
 if (rem >= EXTSPERSUM) {
  IREAD_UNLOCK(imap->im_ipimap);
  release_metapage(mp);
  jfs_error(ip->i_sb, "diAllocIno: no free extent found");
  return -EIO;
 }
 extno = (sword << L2EXTSPERSUM) + rem;



 rem = diFindFree(le32_to_cpu(iagp->wmap[extno]), 0);
 if (rem >= INOSPEREXT) {
  IREAD_UNLOCK(imap->im_ipimap);
  release_metapage(mp);
  jfs_error(ip->i_sb, "diAllocIno: free inode not found");
  return -EIO;
 }



 ino = (extno << L2INOSPEREXT) + rem;



 rc = diAllocBit(imap, iagp, ino);
 IREAD_UNLOCK(imap->im_ipimap);
 if (rc) {
  release_metapage(mp);
  return (rc);
 }



 diInitInode(ip, iagno, ino, extno, iagp);
 write_metapage(mp);

 return (0);
}
