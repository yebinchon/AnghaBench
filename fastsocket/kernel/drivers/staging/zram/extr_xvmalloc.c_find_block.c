
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef size_t ulong ;
typedef size_t u32 ;
struct xv_pool {size_t flbitmap; size_t* slbitmap; TYPE_1__* freelist; } ;
struct page {int dummy; } ;
struct TYPE_2__ {size_t offset; struct page* page; } ;


 size_t BITS_PER_LONG ;
 size_t __ffs (size_t) ;
 size_t get_index (size_t) ;
 scalar_t__ test_bit (size_t,size_t*) ;

__attribute__((used)) static u32 find_block(struct xv_pool *pool, u32 size,
   struct page **page, u32 *offset)
{
 ulong flbitmap, slbitmap;
 u32 flindex, slindex, slbitstart;


 if (!pool->flbitmap)
  return 0;


 slindex = get_index(size);
 slbitmap = pool->slbitmap[slindex / BITS_PER_LONG];
 slbitstart = slindex % BITS_PER_LONG;





 if (test_bit(slbitstart, &slbitmap)) {
  *page = pool->freelist[slindex].page;
  *offset = pool->freelist[slindex].offset;
  return slindex;
 }







 slbitstart++;
 slbitmap >>= slbitstart;


 if ((slbitstart != BITS_PER_LONG) && slbitmap) {
  slindex += __ffs(slbitmap) + 1;
  *page = pool->freelist[slindex].page;
  *offset = pool->freelist[slindex].offset;
  return slindex;
 }


 flindex = slindex / BITS_PER_LONG;

 flbitmap = (pool->flbitmap) >> (flindex + 1);
 if (!flbitmap)
  return 0;

 flindex += __ffs(flbitmap) + 1;
 slbitmap = pool->slbitmap[flindex];
 slindex = (flindex * BITS_PER_LONG) + __ffs(slbitmap);
 *page = pool->freelist[slindex].page;
 *offset = pool->freelist[slindex].offset;

 return slindex;
}
