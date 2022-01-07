
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1_memblk {int dummy; } ;
struct snd_emu10k1 {int dma_mask; int * page_ptr_table; int * page_addr_table; int memhdr; } ;
struct page {int dummy; } ;


 int ENOMEM ;
 int GFP_ATOMIC ;
 int GFP_DMA ;
 int GFP_DMA32 ;
 int GFP_KERNEL ;
 int PAGE_SHIFT ;
 int __GFP_NORETRY ;
 int __GFP_NOWARN ;
 int __free_page (struct page*) ;
 int __synth_free_pages (struct snd_emu10k1*,int,int) ;
 struct page* alloc_page (int) ;
 int emu10k1_memblk_init (struct snd_emu10k1_memblk*) ;
 int get_single_page_range (int ,struct snd_emu10k1_memblk*,int*,int*) ;
 int page_address (struct page*) ;
 int page_to_pfn (struct page*) ;
 int page_to_phys (struct page*) ;

__attribute__((used)) static int synth_alloc_pages(struct snd_emu10k1 *emu, struct snd_emu10k1_memblk *blk)
{
 int page, first_page, last_page;

 emu10k1_memblk_init(blk);
 get_single_page_range(emu->memhdr, blk, &first_page, &last_page);

 for (page = first_page; page <= last_page; page++) {

  struct page *p = alloc_page(GFP_KERNEL | GFP_DMA32 |
         __GFP_NOWARN);
  if (!p || (page_to_pfn(p) & ~(emu->dma_mask >> PAGE_SHIFT))) {
   if (p)
    __free_page(p);

   p = alloc_page(GFP_ATOMIC | GFP_DMA |
           __GFP_NORETRY |
           __GFP_NOWARN);
  }
  if (!p) {
   __synth_free_pages(emu, first_page, page - 1);
   return -ENOMEM;
  }
  emu->page_addr_table[page] = page_to_phys(p);
  emu->page_ptr_table[page] = page_address(p);
 }
 return 0;
}
