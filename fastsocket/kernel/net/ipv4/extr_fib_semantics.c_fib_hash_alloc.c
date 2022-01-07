
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (int) ;
 struct hlist_head* kzalloc (int,int) ;

__attribute__((used)) static struct hlist_head *fib_hash_alloc(int bytes)
{
 if (bytes <= PAGE_SIZE)
  return kzalloc(bytes, GFP_KERNEL);
 else
  return (struct hlist_head *)
   __get_free_pages(GFP_KERNEL | __GFP_ZERO, get_order(bytes));
}
