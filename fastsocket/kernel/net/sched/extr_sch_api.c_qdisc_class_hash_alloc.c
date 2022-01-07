
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int GFP_KERNEL ;
 int INIT_HLIST_HEAD (struct hlist_head*) ;
 unsigned int PAGE_SIZE ;
 scalar_t__ __get_free_pages (int ,int ) ;
 int get_order (unsigned int) ;
 struct hlist_head* kmalloc (unsigned int,int ) ;

__attribute__((used)) static struct hlist_head *qdisc_class_hash_alloc(unsigned int n)
{
 unsigned int size = n * sizeof(struct hlist_head), i;
 struct hlist_head *h;

 if (size <= PAGE_SIZE)
  h = kmalloc(size, GFP_KERNEL);
 else
  h = (struct hlist_head *)
   __get_free_pages(GFP_KERNEL, get_order(size));

 if (h != ((void*)0)) {
  for (i = 0; i < n; i++)
   INIT_HLIST_HEAD(&h[i]);
 }
 return h;
}
