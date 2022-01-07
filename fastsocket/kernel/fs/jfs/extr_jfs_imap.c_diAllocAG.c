
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inomap {TYPE_1__* im_agctl; } ;
struct inode {int i_sb; } ;
struct TYPE_2__ {int numfree; int numinos; } ;


 int EIO ;
 int ENOSPC ;
 int diAllocExt (struct inomap*,int,struct inode*) ;
 int diAllocIno (struct inomap*,int,struct inode*) ;
 int jfs_error (int ,char*) ;

__attribute__((used)) static int
diAllocAG(struct inomap * imap, int agno, bool dir, struct inode *ip)
{
 int rc, addext, numfree, numinos;




 numfree = imap->im_agctl[agno].numfree;
 numinos = imap->im_agctl[agno].numinos;

 if (numfree > numinos) {
  jfs_error(ip->i_sb, "diAllocAG: numfree > numinos");
  return -EIO;
 }






 if (dir)
  addext = (numfree < 64 ||
     (numfree < 256
      && ((numfree * 100) / numinos) <= 20));
 else
  addext = (numfree == 0);




 if (addext) {




  if ((rc = diAllocExt(imap, agno, ip)) != -ENOSPC)
   return (rc);
 }




 return (diAllocIno(imap, agno, ip));
}
