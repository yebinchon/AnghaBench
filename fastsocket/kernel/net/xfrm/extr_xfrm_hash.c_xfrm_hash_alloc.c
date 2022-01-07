
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_KERNEL ;
 unsigned int PAGE_SIZE ;
 int __GFP_NOWARN ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 struct hlist_head* __vmalloc (unsigned int,int,int ) ;
 int get_order (unsigned int) ;
 scalar_t__ hashdist ;
 struct hlist_head* kzalloc (unsigned int,int) ;

struct hlist_head *xfrm_hash_alloc(unsigned int sz)
{
 struct hlist_head *n;

 if (sz <= PAGE_SIZE)
  n = kzalloc(sz, GFP_KERNEL);
 else if (hashdist)
  n = __vmalloc(sz, GFP_KERNEL | __GFP_ZERO, PAGE_KERNEL);
 else
  n = (struct hlist_head *)
   __get_free_pages(GFP_KERNEL | __GFP_NOWARN | __GFP_ZERO,
      get_order(sz));

 return n;
}
