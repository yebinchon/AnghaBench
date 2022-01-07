
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;


 unsigned long PAGE_SIZE ;
 int free_pages (unsigned long,int ) ;
 int get_order (unsigned long) ;
 int kfree (struct neighbour**) ;

__attribute__((used)) static void neigh_hash_free(struct neighbour **hash, unsigned int entries)
{
 unsigned long size = entries * sizeof(struct neighbour *);

 if (size <= PAGE_SIZE)
  kfree(hash);
 else
  free_pages((unsigned long)hash, get_order(size));
}
