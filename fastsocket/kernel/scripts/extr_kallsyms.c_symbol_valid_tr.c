
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct text_range {scalar_t__ start; scalar_t__ end; } ;
struct sym_entry {scalar_t__ addr; } ;


 size_t ARRAY_SIZE (struct text_range*) ;
 struct text_range* text_ranges ;

__attribute__((used)) static int symbol_valid_tr(struct sym_entry *s)
{
 size_t i;
 struct text_range *tr;

 for (i = 0; i < ARRAY_SIZE(text_ranges); ++i) {
  tr = &text_ranges[i];

  if (s->addr >= tr->start && s->addr <= tr->end)
   return 1;
 }

 return 0;
}
