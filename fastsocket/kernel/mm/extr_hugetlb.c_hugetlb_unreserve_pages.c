
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct inode {long i_blocks; int i_lock; TYPE_1__* i_mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;
struct TYPE_2__ {int private_list; } ;


 long blocks_per_huge_page (struct hstate*) ;
 struct hstate* hstate_inode (struct inode*) ;
 int hugepage_subpool_put_pages (struct hugepage_subpool*,long) ;
 int hugetlb_acct_memory (struct hstate*,long) ;
 long region_truncate (int *,long) ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;
 struct hugepage_subpool* subpool_inode (struct inode*) ;

void hugetlb_unreserve_pages(struct inode *inode, long offset, long freed)
{
 struct hstate *h = hstate_inode(inode);
 long chg = region_truncate(&inode->i_mapping->private_list, offset);
 struct hugepage_subpool *spool = subpool_inode(inode);

 spin_lock(&inode->i_lock);
 inode->i_blocks -= (blocks_per_huge_page(h) * freed);
 spin_unlock(&inode->i_lock);

 hugepage_subpool_put_pages(spool, (chg - freed));
 hugetlb_acct_memory(h, -(chg - freed));
}
