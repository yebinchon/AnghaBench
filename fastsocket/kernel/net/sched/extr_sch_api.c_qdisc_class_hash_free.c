
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 unsigned int PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (unsigned int) ;
 int kfree (struct hlist_head*) ;

__attribute__((used)) static void qdisc_class_hash_free(struct hlist_head *h, unsigned int n)
{
 unsigned int size = n * sizeof(struct hlist_head);

 if (size <= PAGE_SIZE)
  kfree(h);
 else
  free_pages((unsigned long)h, get_order(size));
}
