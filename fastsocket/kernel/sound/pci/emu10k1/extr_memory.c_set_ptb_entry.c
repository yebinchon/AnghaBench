
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int dummy; } ;
typedef int dma_addr_t ;


 scalar_t__ EMUPAGESIZE ;
 int UNIT_PAGES ;
 int __set_ptb_entry (struct snd_emu10k1*,int,int ) ;

__attribute__((used)) static inline void set_ptb_entry(struct snd_emu10k1 *emu, int page, dma_addr_t addr)
{
 int i;
 page *= UNIT_PAGES;
 for (i = 0; i < UNIT_PAGES; i++, page++) {
  __set_ptb_entry(emu, page, addr);
  addr += EMUPAGESIZE;
 }
}
