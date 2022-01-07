
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct page {int dummy; } ;
struct mempolicy {scalar_t__ mode; } ;
typedef int gfp_t ;
struct TYPE_2__ {struct mempolicy* mempolicy; } ;


 scalar_t__ MPOL_INTERLEAVE ;
 int __GFP_THISNODE ;
 struct page* __alloc_pages_nodemask (int,unsigned int,int ,int ) ;
 struct page* alloc_page_interleave (int,unsigned int,int ) ;
 TYPE_1__* current ;
 struct mempolicy default_policy ;
 int get_mems_allowed () ;
 scalar_t__ in_interrupt () ;
 int interleave_nodes (struct mempolicy*) ;
 int numa_node_id () ;
 int policy_nodemask (int,struct mempolicy*) ;
 int policy_zonelist (int,struct mempolicy*,int ) ;
 int put_mems_allowed () ;

struct page *alloc_pages_current(gfp_t gfp, unsigned order)
{
 struct mempolicy *pol = current->mempolicy;
 struct page *page;

 if (!pol || in_interrupt() || (gfp & __GFP_THISNODE))
  pol = &default_policy;

 get_mems_allowed();




 if (pol->mode == MPOL_INTERLEAVE)
  page = alloc_page_interleave(gfp, order, interleave_nodes(pol));
 else
  page = __alloc_pages_nodemask(gfp, order,
          policy_zonelist(gfp, pol, numa_node_id()),
    policy_nodemask(gfp, pol));
 put_mems_allowed();
 return page;
}
