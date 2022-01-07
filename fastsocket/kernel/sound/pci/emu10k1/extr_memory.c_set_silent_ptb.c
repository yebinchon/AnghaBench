
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int addr; } ;
struct snd_emu10k1 {TYPE_1__ silent_page; } ;


 int UNIT_PAGES ;
 int __set_ptb_entry (struct snd_emu10k1*,int,int ) ;

__attribute__((used)) static inline void set_silent_ptb(struct snd_emu10k1 *emu, int page)
{
 int i;
 page *= UNIT_PAGES;
 for (i = 0; i < UNIT_PAGES; i++, page++)

  __set_ptb_entry(emu, page, emu->silent_page.addr);
}
