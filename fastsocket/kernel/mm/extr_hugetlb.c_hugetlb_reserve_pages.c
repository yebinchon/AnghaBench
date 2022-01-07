
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int vm_flags; } ;
struct resv_map {int dummy; } ;
struct inode {TYPE_1__* i_mapping; } ;
struct hugepage_subpool {int dummy; } ;
struct hstate {int dummy; } ;
struct TYPE_2__ {int private_list; } ;


 int ENOMEM ;
 long ENOSPC ;
 int HPAGE_RESV_OWNER ;
 int VM_MAYSHARE ;
 int VM_NORESERVE ;
 struct hstate* hstate_inode (struct inode*) ;
 scalar_t__ hugepage_subpool_get_pages (struct hugepage_subpool*,long) ;
 int hugepage_subpool_put_pages (struct hugepage_subpool*,long) ;
 long hugetlb_acct_memory (struct hstate*,long) ;
 int region_add (int *,long,long) ;
 long region_chg (int *,long,long) ;
 struct resv_map* resv_map_alloc () ;
 int resv_map_put (struct vm_area_struct*) ;
 int set_vma_resv_flags (struct vm_area_struct*,int ) ;
 int set_vma_resv_map (struct vm_area_struct*,struct resv_map*) ;
 struct hugepage_subpool* subpool_inode (struct inode*) ;

int hugetlb_reserve_pages(struct inode *inode,
     long from, long to,
     struct vm_area_struct *vma,
     int acctflag)
{
 long ret, chg;
 struct hstate *h = hstate_inode(inode);
 struct hugepage_subpool *spool = subpool_inode(inode);






 if (acctflag & VM_NORESERVE)
  return 0;







 if (!vma || vma->vm_flags & VM_MAYSHARE)
  chg = region_chg(&inode->i_mapping->private_list, from, to);
 else {
  struct resv_map *resv_map = resv_map_alloc();
  if (!resv_map)
   return -ENOMEM;

  chg = to - from;

  set_vma_resv_map(vma, resv_map);
  set_vma_resv_flags(vma, HPAGE_RESV_OWNER);
 }

 if (chg < 0) {
  ret = chg;
  goto out_err;
 }


 if (hugepage_subpool_get_pages(spool, chg)) {
  ret = -ENOSPC;
  goto out_err;
 }





 ret = hugetlb_acct_memory(h, chg);
 if (ret < 0) {
  hugepage_subpool_put_pages(spool, chg);
  goto out_err;
 }
 if (!vma || vma->vm_flags & VM_MAYSHARE)
  region_add(&inode->i_mapping->private_list, from, to);
 return 0;
out_err:
 if (vma)
  resv_map_put(vma);
 return ret;
}
