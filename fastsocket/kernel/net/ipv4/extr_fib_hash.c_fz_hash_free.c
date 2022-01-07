
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 unsigned long PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (unsigned long) ;
 int kfree (struct hlist_head*) ;

__attribute__((used)) static void fz_hash_free(struct hlist_head *hash, int divisor)
{
 unsigned long size = divisor * sizeof(struct hlist_head);

 if (size <= PAGE_SIZE)
  kfree(hash);
 else
  free_pages((unsigned long)hash, get_order(size));
}
