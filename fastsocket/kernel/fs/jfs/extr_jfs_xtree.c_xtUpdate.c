
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_4__ ;
typedef struct TYPE_19__ TYPE_3__ ;
typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


struct TYPE_17__ {void* nextindex; void* maxentry; int flag; int next; } ;
struct TYPE_19__ {TYPE_1__ header; TYPE_4__* xad; } ;
typedef TYPE_3__ xtpage_t ;
struct TYPE_20__ {int flag; } ;
typedef TYPE_4__ xad_t ;
typedef int tid_t ;
struct xtsplit {int index; int flag; int len; int * pxdlist; scalar_t__ addr; scalar_t__ off; struct metapage* mp; } ;
struct TYPE_18__ {int offset; int length; } ;
struct xtlock {TYPE_2__ lwm; } ;
struct tlock {int lock; } ;
struct metapage {int dummy; } ;
struct inode {int i_sb; } ;
struct btstack {int top; } ;
typedef scalar_t__ s64 ;


 int ASSERT (int) ;
 int BT_INTERNAL ;
 int BT_MARK_DIRTY (struct metapage*,struct inode*) ;
 int COMMIT_Nolink ;
 int EIO ;
 int L2XTSLOTSIZE ;
 int MAXXLEN ;
 int PSIZE ;
 int XAD_EXTENDED ;
 int XAD_NEW ;
 int XAD_NOTRECORDED ;
 int XADaddress (TYPE_4__*,scalar_t__) ;
 int XADlength (TYPE_4__*,scalar_t__) ;
 int XADoffset (TYPE_4__*,scalar_t__) ;
 int XTENTRYSTART ;
 int XT_GETPAGE (struct inode*,scalar_t__,struct metapage*,int ,TYPE_3__*,int) ;
 int XT_GETSEARCH (struct inode*,int ,scalar_t__,struct metapage*,TYPE_3__*,int) ;
 int XT_INSERT ;
 int XT_PUTENTRY (TYPE_4__*,int,scalar_t__,int,scalar_t__) ;
 int XT_PUTPAGE (struct metapage*) ;
 scalar_t__ addressXAD (TYPE_4__*) ;
 void* cpu_to_le16 (int) ;
 int jfs_error (int ,char*) ;
 int le16_to_cpu (void*) ;
 scalar_t__ le64_to_cpu (int ) ;
 int lengthXAD (TYPE_4__*) ;
 int memmove (TYPE_4__*,TYPE_4__*,int) ;
 int min (int,int) ;
 scalar_t__ offsetXAD (TYPE_4__*) ;
 int test_cflag (int ,struct inode*) ;
 int tlckGROW ;
 int tlckXTREE ;
 struct tlock* txLock (int ,struct inode*,struct metapage*,int) ;
 int xtSearch (struct inode*,scalar_t__,int *,int*,struct btstack*,int ) ;
 int xtSplitUp (int ,struct inode*,struct xtsplit*,struct btstack*) ;

int xtUpdate(tid_t tid, struct inode *ip, xad_t * nxad)
{
 int rc = 0;
 int cmp;
 struct metapage *mp;
 xtpage_t *p;
 s64 bn;
 int index0, index, newindex, nextindex;
 struct btstack btstack;
 struct xtsplit split;
 xad_t *xad, *lxad, *rxad;
 int xflag;
 s64 nxoff, xoff;
 int nxlen, xlen, lxlen, rxlen;
 s64 nxaddr, xaddr;
 struct tlock *tlck;
 struct xtlock *xtlck = ((void*)0);
 int newpage = 0;


 nxoff = offsetXAD(nxad);
 nxlen = lengthXAD(nxad);
 nxaddr = addressXAD(nxad);

 if ((rc = xtSearch(ip, nxoff, ((void*)0), &cmp, &btstack, XT_INSERT)))
  return rc;


 XT_GETSEARCH(ip, btstack.top, bn, mp, p, index0);

 if (cmp != 0) {
  XT_PUTPAGE(mp);
  jfs_error(ip->i_sb, "xtUpdate: Could not find extent");
  return -EIO;
 }

 BT_MARK_DIRTY(mp, ip);



 if (!test_cflag(COMMIT_Nolink, ip)) {
  tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW);
  xtlck = (struct xtlock *) & tlck->lock;
 }

 xad = &p->xad[index0];
 xflag = xad->flag;
 xoff = offsetXAD(xad);
 xlen = lengthXAD(xad);
 xaddr = addressXAD(xad);


 if ((xoff > nxoff) ||
     (nxoff + nxlen > xoff + xlen)) {
  XT_PUTPAGE(mp);
  jfs_error(ip->i_sb,
     "xtUpdate: nXAD in not completely contained within XAD");
  return -EIO;
 }

 index = index0;
 newindex = index + 1;
 nextindex = le16_to_cpu(p->header.nextindex);
 if (xoff < nxoff)
  goto coalesceRight;






 if (index == XTENTRYSTART)
  goto replace;


 lxad = &p->xad[index - 1];
 lxlen = lengthXAD(lxad);
 if (!(lxad->flag & XAD_NOTRECORDED) &&
     (nxoff == offsetXAD(lxad) + lxlen) &&
     (nxaddr == addressXAD(lxad) + lxlen) &&
     (lxlen + nxlen < MAXXLEN)) {

  index0 = index - 1;
  XADlength(lxad, lxlen + nxlen);






  if (!(lxad->flag & XAD_NEW))
   lxad->flag |= XAD_EXTENDED;

  if (xlen > nxlen) {

   XADoffset(xad, xoff + nxlen);
   XADlength(xad, xlen - nxlen);
   XADaddress(xad, xaddr + nxlen);
   goto out;
  } else {


   if (index < nextindex - 1)
    memmove(&p->xad[index], &p->xad[index + 1],
     (nextindex - index -
      1) << L2XTSLOTSIZE);

   p->header.nextindex =
       cpu_to_le16(le16_to_cpu(p->header.nextindex) -
     1);

   index = index0;
   newindex = index + 1;
   nextindex = le16_to_cpu(p->header.nextindex);
   xoff = nxoff = offsetXAD(lxad);
   xlen = nxlen = lxlen + nxlen;
   xaddr = nxaddr = addressXAD(lxad);
   goto coalesceRight;
  }
 }




      replace:
 if (nxlen == xlen) {

  *xad = *nxad;
  xad->flag = xflag & ~XAD_NOTRECORDED;

  goto coalesceRight;
 } else
  goto updateLeft;




      coalesceRight:

 if (newindex == nextindex) {
  if (xoff == nxoff)
   goto out;
  goto updateRight;
 }


 rxad = &p->xad[index + 1];
 rxlen = lengthXAD(rxad);
 if (!(rxad->flag & XAD_NOTRECORDED) &&
     (nxoff + nxlen == offsetXAD(rxad)) &&
     (nxaddr + nxlen == addressXAD(rxad)) &&
     (rxlen + nxlen < MAXXLEN)) {

  XADoffset(rxad, nxoff);
  XADlength(rxad, rxlen + nxlen);
  XADaddress(rxad, nxaddr);






  if (!(rxad->flag & XAD_NEW))
   rxad->flag |= XAD_EXTENDED;

  if (xlen > nxlen)

   XADlength(xad, xlen - nxlen);
  else {


   memmove(&p->xad[index], &p->xad[index + 1],
    (nextindex - index - 1) << L2XTSLOTSIZE);

   p->header.nextindex =
       cpu_to_le16(le16_to_cpu(p->header.nextindex) -
     1);
  }

  goto out;
 } else if (xoff == nxoff)
  goto out;

 if (xoff >= nxoff) {
  XT_PUTPAGE(mp);
  jfs_error(ip->i_sb, "xtUpdate: xoff >= nxoff");
  return -EIO;
 }
      updateRight:

 xad = &p->xad[index];
 XADlength(xad, nxoff - xoff);


 if (nextindex == le16_to_cpu(p->header.maxentry)) {


  split.mp = mp;
  split.index = newindex;
  split.flag = xflag & ~XAD_NOTRECORDED;
  split.off = nxoff;
  split.len = nxlen;
  split.addr = nxaddr;
  split.pxdlist = ((void*)0);
  if ((rc = xtSplitUp(tid, ip, &split, &btstack)))
   return rc;


  XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
  if (rc)
   return rc;





  if (p->header.flag & BT_INTERNAL) {
   ASSERT(p->header.nextindex ==
          cpu_to_le16(XTENTRYSTART + 1));
   xad = &p->xad[XTENTRYSTART];
   bn = addressXAD(xad);
   XT_PUTPAGE(mp);


   XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
   if (rc)
    return rc;

   BT_MARK_DIRTY(mp, ip);
   if (!test_cflag(COMMIT_Nolink, ip)) {
    tlck = txLock(tid, ip, mp, tlckXTREE|tlckGROW);
    xtlck = (struct xtlock *) & tlck->lock;
   }
  } else {

   if (newindex >
       (le16_to_cpu(p->header.maxentry) >> 1)) {
    newindex =
        newindex -
        le16_to_cpu(p->header.nextindex) +
        XTENTRYSTART;
    newpage = 1;
   }
  }
 } else {

  if (newindex < nextindex)
   memmove(&p->xad[newindex + 1], &p->xad[newindex],
    (nextindex - newindex) << L2XTSLOTSIZE);


  xad = &p->xad[newindex];
  *xad = *nxad;
  xad->flag = xflag & ~XAD_NOTRECORDED;


  p->header.nextindex =
      cpu_to_le16(le16_to_cpu(p->header.nextindex) + 1);
 }
 if (nxoff + nxlen == xoff + xlen)
  goto out;


 if (newpage) {

  if (!test_cflag(COMMIT_Nolink, ip)) {
   xtlck->lwm.offset = (xtlck->lwm.offset) ?
       min(index0, (int)xtlck->lwm.offset) : index0;
   xtlck->lwm.length =
       le16_to_cpu(p->header.nextindex) -
       xtlck->lwm.offset;
  }

  bn = le64_to_cpu(p->header.next);
  XT_PUTPAGE(mp);


  XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
  if (rc)
   return rc;

  BT_MARK_DIRTY(mp, ip);
  if (!test_cflag(COMMIT_Nolink, ip)) {
   tlck = txLock(tid, ip, mp, tlckXTREE | tlckGROW);
   xtlck = (struct xtlock *) & tlck->lock;
  }

  index0 = index = newindex;
 } else
  index++;

 newindex = index + 1;
 nextindex = le16_to_cpu(p->header.nextindex);
 xlen = xlen - (nxoff - xoff);
 xoff = nxoff;
 xaddr = nxaddr;


 if (nextindex == le16_to_cpu(p->header.maxentry)) {
  XT_PUTPAGE(mp);

  if ((rc = xtSearch(ip, nxoff, ((void*)0), &cmp, &btstack, XT_INSERT)))
   return rc;


  XT_GETSEARCH(ip, btstack.top, bn, mp, p, index0);

  if (cmp != 0) {
   XT_PUTPAGE(mp);
   jfs_error(ip->i_sb, "xtUpdate: xtSearch failed");
   return -EIO;
  }

  if (index0 != index) {
   XT_PUTPAGE(mp);
   jfs_error(ip->i_sb,
      "xtUpdate: unexpected value of index");
   return -EIO;
  }
 }
      updateLeft:

 xad = &p->xad[index];
 *xad = *nxad;
 xad->flag = xflag & ~XAD_NOTRECORDED;


 xoff = xoff + nxlen;
 xlen = xlen - nxlen;
 xaddr = xaddr + nxlen;
 if (nextindex == le16_to_cpu(p->header.maxentry)) {




  split.mp = mp;
  split.index = newindex;
  split.flag = xflag;
  split.off = xoff;
  split.len = xlen;
  split.addr = xaddr;
  split.pxdlist = ((void*)0);
  if ((rc = xtSplitUp(tid, ip, &split, &btstack)))
   return rc;


  XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
  if (rc)
   return rc;






  if (p->header.flag & BT_INTERNAL) {
   ASSERT(p->header.nextindex ==
          cpu_to_le16(XTENTRYSTART + 1));
   xad = &p->xad[XTENTRYSTART];
   bn = addressXAD(xad);
   XT_PUTPAGE(mp);


   XT_GETPAGE(ip, bn, mp, PSIZE, p, rc);
   if (rc)
    return rc;

   BT_MARK_DIRTY(mp, ip);
   if (!test_cflag(COMMIT_Nolink, ip)) {
    tlck = txLock(tid, ip, mp, tlckXTREE|tlckGROW);
    xtlck = (struct xtlock *) & tlck->lock;
   }
  }
 } else {

  if (newindex < nextindex)
   memmove(&p->xad[newindex + 1], &p->xad[newindex],
    (nextindex - newindex) << L2XTSLOTSIZE);


  xad = &p->xad[newindex];
  XT_PUTENTRY(xad, xflag, xoff, xlen, xaddr);


  p->header.nextindex =
      cpu_to_le16(le16_to_cpu(p->header.nextindex) + 1);
 }

      out:
 if (!test_cflag(COMMIT_Nolink, ip)) {
  xtlck->lwm.offset = (xtlck->lwm.offset) ?
      min(index0, (int)xtlck->lwm.offset) : index0;
  xtlck->lwm.length = le16_to_cpu(p->header.nextindex) -
      xtlck->lwm.offset;
 }


 XT_PUTPAGE(mp);

 return rc;
}
