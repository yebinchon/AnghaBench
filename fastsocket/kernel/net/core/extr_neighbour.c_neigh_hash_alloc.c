
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct neighbour {int dummy; } ;


 int GFP_ATOMIC ;
 unsigned long PAGE_SIZE ;
 int __GFP_ZERO ;
 scalar_t__ __get_free_pages (int,int ) ;
 int get_order (unsigned long) ;
 struct neighbour** kzalloc (unsigned long,int) ;

__attribute__((used)) static struct neighbour **neigh_hash_alloc(unsigned int entries)
{
 unsigned long size = entries * sizeof(struct neighbour *);
 struct neighbour **ret;

 if (size <= PAGE_SIZE) {
  ret = kzalloc(size, GFP_ATOMIC);
 } else {
  ret = (struct neighbour **)
        __get_free_pages(GFP_ATOMIC|__GFP_ZERO, get_order(size));
 }
 return ret;
}
