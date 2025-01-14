
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct metapage {scalar_t__ data; } ;
struct inomap {int im_nextiag; int im_numfree; int im_numinos; TYPE_1__* im_agctl; } ;
struct inode {int i_sb; } ;
struct iag {scalar_t__ iagnum; scalar_t__ nfreeexts; scalar_t__ nfreeinos; scalar_t__ inofreeback; scalar_t__ extfreeback; scalar_t__ extfreefwd; scalar_t__ inofreefwd; int agstart; } ;
struct bmap {int db_agl2size; } ;
typedef int s64 ;
struct TYPE_6__ {struct inomap* i_imap; } ;
struct TYPE_5__ {struct bmap* bmap; } ;
struct TYPE_4__ {int inofree; int extfree; scalar_t__ numfree; scalar_t__ numinos; } ;


 int EIO ;
 int EXTSPERIAG ;
 TYPE_3__* JFS_IP (struct inode*) ;
 TYPE_2__* JFS_SBI (int ) ;
 int L2INOSPEREXT ;
 int MAXAG ;
 int atomic_read (int *) ;
 scalar_t__ cpu_to_le32 (int) ;
 int diIAGRead (struct inomap*,int,struct metapage**) ;
 int jfs_error (int ,char*) ;
 int jfs_info (char*,int,int,int) ;
 int le32_to_cpu (scalar_t__) ;
 int le64_to_cpu (int ) ;
 int release_metapage (struct metapage*) ;
 int write_metapage (struct metapage*) ;

int diExtendFS(struct inode *ipimap, struct inode *ipbmap)
{
 int rc, rcx = 0;
 struct inomap *imap = JFS_IP(ipimap)->i_imap;
 struct iag *iagp = ((void*)0), *hiagp = ((void*)0);
 struct bmap *mp = JFS_SBI(ipbmap->i_sb)->bmap;
 struct metapage *bp, *hbp;
 int i, n, head;
 int numinos, xnuminos = 0, xnumfree = 0;
 s64 agstart;

 jfs_info("diExtendFS: nextiag:%d numinos:%d numfree:%d",
     imap->im_nextiag, atomic_read(&imap->im_numinos),
     atomic_read(&imap->im_numfree));
 for (i = 0; i < MAXAG; i++) {
  imap->im_agctl[i].inofree = -1;
  imap->im_agctl[i].extfree = -1;
  imap->im_agctl[i].numinos = 0;
  imap->im_agctl[i].numfree = 0;
 }






 for (i = 0; i < imap->im_nextiag; i++) {
  if ((rc = diIAGRead(imap, i, &bp))) {
   rcx = rc;
   continue;
  }
  iagp = (struct iag *) bp->data;
  if (le32_to_cpu(iagp->iagnum) != i) {
   release_metapage(bp);
   jfs_error(ipimap->i_sb,
      "diExtendFs: unexpected value of iagnum");
   return -EIO;
  }


  if (iagp->nfreeexts == cpu_to_le32(EXTSPERIAG)) {
   release_metapage(bp);
   continue;
  }


  agstart = le64_to_cpu(iagp->agstart);

  n = agstart >> mp->db_agl2size;


  numinos = (EXTSPERIAG - le32_to_cpu(iagp->nfreeexts))
      << L2INOSPEREXT;
  if (numinos > 0) {

   imap->im_agctl[n].numinos += numinos;
   xnuminos += numinos;
  }


  if ((int) le32_to_cpu(iagp->nfreeinos) > 0) {
   if ((head = imap->im_agctl[n].inofree) == -1) {
    iagp->inofreefwd = cpu_to_le32(-1);
    iagp->inofreeback = cpu_to_le32(-1);
   } else {
    if ((rc = diIAGRead(imap, head, &hbp))) {
     rcx = rc;
     goto nextiag;
    }
    hiagp = (struct iag *) hbp->data;
    hiagp->inofreeback = iagp->iagnum;
    iagp->inofreefwd = cpu_to_le32(head);
    iagp->inofreeback = cpu_to_le32(-1);
    write_metapage(hbp);
   }

   imap->im_agctl[n].inofree =
       le32_to_cpu(iagp->iagnum);


   imap->im_agctl[n].numfree +=
       le32_to_cpu(iagp->nfreeinos);
   xnumfree += le32_to_cpu(iagp->nfreeinos);
  }


  if (le32_to_cpu(iagp->nfreeexts) > 0) {
   if ((head = imap->im_agctl[n].extfree) == -1) {
    iagp->extfreefwd = cpu_to_le32(-1);
    iagp->extfreeback = cpu_to_le32(-1);
   } else {
    if ((rc = diIAGRead(imap, head, &hbp))) {
     rcx = rc;
     goto nextiag;
    }
    hiagp = (struct iag *) hbp->data;
    hiagp->extfreeback = iagp->iagnum;
    iagp->extfreefwd = cpu_to_le32(head);
    iagp->extfreeback = cpu_to_le32(-1);
    write_metapage(hbp);
   }

   imap->im_agctl[n].extfree =
       le32_to_cpu(iagp->iagnum);
  }

       nextiag:
  write_metapage(bp);
 }

 if (xnuminos != atomic_read(&imap->im_numinos) ||
     xnumfree != atomic_read(&imap->im_numfree)) {
  jfs_error(ipimap->i_sb,
     "diExtendFs: numinos or numfree incorrect");
  return -EIO;
 }

 return rcx;
}
