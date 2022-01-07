
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct hstate {int dummy; } ;
typedef int nodemask_t ;


 int HTLB_BUDDY_PGALLOC ;
 int HTLB_BUDDY_PGALLOC_FAIL ;
 struct page* alloc_fresh_huge_page_node (struct hstate*,int) ;
 int count_vm_event (int ) ;
 int hstate_next_node_to_alloc (struct hstate*,int *) ;

__attribute__((used)) static int alloc_fresh_huge_page(struct hstate *h, nodemask_t *nodes_allowed)
{
 struct page *page;
 int start_nid;
 int next_nid;
 int ret = 0;

 start_nid = hstate_next_node_to_alloc(h, nodes_allowed);
 next_nid = start_nid;

 do {
  page = alloc_fresh_huge_page_node(h, next_nid);
  if (page) {
   ret = 1;
   break;
  }
  next_nid = hstate_next_node_to_alloc(h, nodes_allowed);
 } while (next_nid != start_nid);

 if (ret)
  count_vm_event(HTLB_BUDDY_PGALLOC);
 else
  count_vm_event(HTLB_BUDDY_PGALLOC_FAIL);

 return ret;
}
