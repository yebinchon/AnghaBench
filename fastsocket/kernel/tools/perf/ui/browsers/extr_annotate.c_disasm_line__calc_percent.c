
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int end; int start; } ;
struct sym_hist {double sum; scalar_t__* addr; } ;
struct source_line {scalar_t__ percent; } ;
struct disasm_line {int offset; } ;
struct annotation {TYPE_1__* src; } ;
typedef size_t s64 ;
struct TYPE_2__ {int source; struct source_line* lines; } ;


 struct sym_hist* annotation__histogram (struct annotation*,int) ;
 struct disasm_line* disasm__get_next_ip_line (int *,struct disasm_line*) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static double disasm_line__calc_percent(struct disasm_line *dl, struct symbol *sym, int evidx)
{
 double percent = 0.0;

 if (dl->offset != -1) {
  int len = sym->end - sym->start;
  unsigned int hits = 0;
  struct annotation *notes = symbol__annotation(sym);
  struct source_line *src_line = notes->src->lines;
  struct sym_hist *h = annotation__histogram(notes, evidx);
  s64 offset = dl->offset;
  struct disasm_line *next;

  next = disasm__get_next_ip_line(&notes->src->source, dl);
  while (offset < (s64)len &&
         (next == ((void*)0) || offset < next->offset)) {
   if (src_line) {
    percent += src_line[offset].percent;
   } else
    hits += h->addr[offset];

   ++offset;
  }




  if (src_line == ((void*)0) && h->sum)
   percent = 100.0 * hits / h->sum;
 }

 return percent;
}
