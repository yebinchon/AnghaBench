
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct zonelist {int dummy; } ;
struct vm_area_struct {int dummy; } ;
struct page {int dummy; } ;
struct mempolicy {scalar_t__ mode; } ;
typedef int gfp_t ;


 scalar_t__ MPOL_INTERLEAVE ;
 scalar_t__ PAGE_SHIFT ;
 struct page* __alloc_pages_nodemask (int ,int,struct zonelist*,int ) ;
 int __mpol_put (struct mempolicy*) ;
 struct page* alloc_page_interleave (int ,int,unsigned int) ;
 int current ;
 int get_mems_allowed () ;
 struct mempolicy* get_vma_policy (int ,struct vm_area_struct*,unsigned long) ;
 unsigned int interleave_nid (struct mempolicy*,struct vm_area_struct*,unsigned long,scalar_t__) ;
 int mpol_cond_put (struct mempolicy*) ;
 int mpol_needs_cond_ref (struct mempolicy*) ;
 int policy_nodemask (int ,struct mempolicy*) ;
 struct zonelist* policy_zonelist (int ,struct mempolicy*,int) ;
 int put_mems_allowed () ;
 scalar_t__ unlikely (int) ;

struct page *
alloc_pages_vma(gfp_t gfp, int order, struct vm_area_struct *vma,
  unsigned long addr, int node)
{
 struct mempolicy *pol = get_vma_policy(current, vma, addr);
 struct zonelist *zl;
 struct page *page;

 get_mems_allowed();
 if (unlikely(pol->mode == MPOL_INTERLEAVE)) {
  unsigned nid;

  nid = interleave_nid(pol, vma, addr, PAGE_SHIFT + order);
  mpol_cond_put(pol);
  page = alloc_page_interleave(gfp, order, nid);
  put_mems_allowed();
  return page;
 }
 zl = policy_zonelist(gfp, pol, node);
 if (unlikely(mpol_needs_cond_ref(pol))) {



  struct page *page = __alloc_pages_nodemask(gfp, order,
      zl, policy_nodemask(gfp, pol));
  __mpol_put(pol);
  put_mems_allowed();
  return page;
 }



 page = __alloc_pages_nodemask(gfp, order, zl,
          policy_nodemask(gfp, pol));
 put_mems_allowed();
 return page;
}
