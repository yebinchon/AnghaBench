
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct page {int dummy; } ;
struct kmem_cache {int dummy; } ;
typedef int gfp_t ;


 int __GFP_THISNODE ;
 struct page* get_any_partial (struct kmem_cache*,int) ;
 int get_node (struct kmem_cache*,int) ;
 struct page* get_partial_node (int ) ;
 int numa_node_id () ;

__attribute__((used)) static struct page *get_partial(struct kmem_cache *s, gfp_t flags, int node)
{
 struct page *page;
 int searchnode = (node == -1) ? numa_node_id() : node;

 page = get_partial_node(get_node(s, searchnode));
 if (page || (flags & __GFP_THISNODE))
  return page;

 return get_any_partial(s, flags);
}
