
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct slab {int dummy; } ;
struct kmem_cache {unsigned int num; int gfporder; } ;
typedef int kmem_bufctl_t ;


 unsigned long CFLGS_OFF_SLAB ;
 int KMALLOC_MAX_ORDER ;
 int PAGE_SIZE ;
 unsigned long SLAB_RECLAIM_ACCOUNT ;
 int cache_estimate (int,size_t,size_t,unsigned long,size_t*,unsigned int*) ;
 int slab_break_gfp_order ;

__attribute__((used)) static size_t calculate_slab_order(struct kmem_cache *cachep,
   size_t size, size_t align, unsigned long flags)
{
 unsigned long offslab_limit;
 size_t left_over = 0;
 int gfporder;

 for (gfporder = 0; gfporder <= KMALLOC_MAX_ORDER; gfporder++) {
  unsigned int num;
  size_t remainder;

  cache_estimate(gfporder, size, align, flags, &remainder, &num);
  if (!num)
   continue;

  if (flags & CFLGS_OFF_SLAB) {





   offslab_limit = size - sizeof(struct slab);
   offslab_limit /= sizeof(kmem_bufctl_t);

    if (num > offslab_limit)
    break;
  }


  cachep->num = num;
  cachep->gfporder = gfporder;
  left_over = remainder;






  if (flags & SLAB_RECLAIM_ACCOUNT)
   break;





  if (gfporder >= slab_break_gfp_order)
   break;




  if (left_over * 8 <= (PAGE_SIZE << gfporder))
   break;
 }
 return left_over;
}
