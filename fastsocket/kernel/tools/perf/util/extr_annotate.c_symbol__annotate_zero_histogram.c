
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct sym_hist {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_2__ {int sizeof_sym_hist; } ;


 struct sym_hist* annotation__histogram (struct annotation*,int) ;
 int memset (struct sym_hist*,int ,int ) ;
 struct annotation* symbol__annotation (struct symbol*) ;

void symbol__annotate_zero_histogram(struct symbol *sym, int evidx)
{
 struct annotation *notes = symbol__annotation(sym);
 struct sym_hist *h = annotation__histogram(notes, evidx);

 memset(h, 0, notes->src->sizeof_sym_hist);
}
