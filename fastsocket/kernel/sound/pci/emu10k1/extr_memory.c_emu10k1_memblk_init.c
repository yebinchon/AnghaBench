
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ size; scalar_t__ offset; } ;
struct snd_emu10k1_memblk {int mapped_page; void* first_page; void* last_page; void* pages; TYPE_1__ mem; scalar_t__ map_locked; int mapped_order_link; int mapped_link; } ;


 int INIT_LIST_HEAD (int *) ;
 void* get_aligned_page (scalar_t__) ;

__attribute__((used)) static void emu10k1_memblk_init(struct snd_emu10k1_memblk *blk)
{
 blk->mapped_page = -1;
 INIT_LIST_HEAD(&blk->mapped_link);
 INIT_LIST_HEAD(&blk->mapped_order_link);
 blk->map_locked = 0;

 blk->first_page = get_aligned_page(blk->mem.offset);
 blk->last_page = get_aligned_page(blk->mem.offset + blk->mem.size - 1);
 blk->pages = blk->last_page - blk->first_page + 1;
}
