
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snd_emu10k1 {int ** page_ptr_table; scalar_t__* page_addr_table; } ;


 int free_page (unsigned long) ;

__attribute__((used)) static void __synth_free_pages(struct snd_emu10k1 *emu, int first_page,
          int last_page)
{
 int page;

 for (page = first_page; page <= last_page; page++) {
  free_page((unsigned long)emu->page_ptr_table[page]);
  emu->page_addr_table[page] = 0;
  emu->page_ptr_table[page] = ((void*)0);
 }
}
