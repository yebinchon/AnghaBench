
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct hlist_head {int dummy; } ;


 int free_pages (unsigned long,int ) ;
 int get_order (int) ;
 int vfree (void*) ;

void nf_ct_free_hashtable(void *hash, int vmalloced, unsigned int size)
{
 if (vmalloced)
  vfree(hash);
 else
  free_pages((unsigned long)hash,
      get_order(sizeof(struct hlist_head) * size));
}
