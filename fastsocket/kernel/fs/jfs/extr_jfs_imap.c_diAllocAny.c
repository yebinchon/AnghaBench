
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct inomap {TYPE_2__* im_ipimap; } ;
struct inode {int dummy; } ;
struct TYPE_6__ {TYPE_1__* bmap; } ;
struct TYPE_5__ {int i_sb; } ;
struct TYPE_4__ {int db_maxag; } ;


 int AG_LOCK (struct inomap*,int) ;
 int AG_UNLOCK (struct inomap*,int) ;
 int ENOSPC ;
 TYPE_3__* JFS_SBI (int ) ;
 int diAllocAG (struct inomap*,int,int,struct inode*) ;

__attribute__((used)) static int
diAllocAny(struct inomap * imap, int agno, bool dir, struct inode *ip)
{
 int ag, rc;
 int maxag = JFS_SBI(imap->im_ipimap->i_sb)->bmap->db_maxag;





 for (ag = agno + 1; ag <= maxag; ag++) {
  AG_LOCK(imap, ag);

  rc = diAllocAG(imap, ag, dir, ip);

  AG_UNLOCK(imap, ag);

  if (rc != -ENOSPC)
   return (rc);
 }



 for (ag = 0; ag < agno; ag++) {
  AG_LOCK(imap, ag);

  rc = diAllocAG(imap, ag, dir, ip);

  AG_UNLOCK(imap, ag);

  if (rc != -ENOSPC)
   return (rc);
 }



 return -ENOSPC;
}
