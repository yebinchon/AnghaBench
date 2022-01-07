
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_7__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct TYPE_8__ {TYPE_2__* xad; } ;
typedef TYPE_1__ xtpage_t ;
struct TYPE_9__ {int flag; } ;
typedef TYPE_2__ xad_t ;
typedef int u64 ;
struct metapage {int dummy; } ;
struct inode {int i_sb; scalar_t__ i_size; } ;
struct btstack {int top; } ;
typedef int s64 ;
typedef int s32 ;
struct TYPE_10__ {int bsize; int l2bsize; } ;


 TYPE_7__* JFS_SBI (int ) ;
 int XT_GETSEARCH (struct inode*,int ,int,struct metapage*,TYPE_1__*,int) ;
 int XT_PUTPAGE (struct metapage*) ;
 int addressXAD (TYPE_2__*) ;
 int jfs_err (char*,int) ;
 int lengthXAD (TYPE_2__*) ;
 int min (int,int) ;
 int offsetXAD (TYPE_2__*) ;
 int xtSearch (struct inode*,int,int*,int*,struct btstack*,int ) ;

int xtLookup(struct inode *ip, s64 lstart,
      s64 llen, int *pflag, s64 * paddr, s32 * plen, int no_check)
{
 int rc = 0;
 struct btstack btstack;
 int cmp;
 s64 bn;
 struct metapage *mp;
 xtpage_t *p;
 int index;
 xad_t *xad;
 s64 next, size, xoff, xend;
 int xlen;
 s64 xaddr;

 *paddr = 0;
 *plen = llen;

 if (!no_check) {

  size = ((u64) ip->i_size + (JFS_SBI(ip->i_sb)->bsize - 1)) >>
      JFS_SBI(ip->i_sb)->l2bsize;
  if (lstart >= size)
   return 0;
 }





 if ((rc = xtSearch(ip, lstart, &next, &cmp, &btstack, 0))) {
  jfs_err("xtLookup: xtSearch returned %d", rc);
  return rc;
 }
 XT_GETSEARCH(ip, btstack.top, bn, mp, p, index);





 if (cmp) {
  if (next)
   *plen = min(next - lstart, llen);
  goto out;
 }




 xad = &p->xad[index];
 xoff = offsetXAD(xad);
 xlen = lengthXAD(xad);
 xend = xoff + xlen;
 xaddr = addressXAD(xad);


 *pflag = xad->flag;
 *paddr = xaddr + (lstart - xoff);

 *plen = min(xend - lstart, llen);

      out:
 XT_PUTPAGE(mp);

 return rc;
}
