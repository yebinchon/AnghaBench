
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef int u64 ;
struct symbol {int dummy; } ;
struct sym_hist {int dummy; } ;
struct annotation {TYPE_1__* src; } ;
struct TYPE_4__ {int nr_events; } ;
struct TYPE_3__ {size_t sizeof_sym_hist; size_t nr_histograms; int source; } ;


 int INIT_LIST_HEAD (int *) ;
 int SIZE_MAX ;
 struct annotation* symbol__annotation (struct symbol*) ;
 size_t symbol__size (struct symbol*) ;
 TYPE_2__ symbol_conf ;
 TYPE_1__* zalloc (int) ;

int symbol__alloc_hist(struct symbol *sym)
{
 struct annotation *notes = symbol__annotation(sym);
 const size_t size = symbol__size(sym);
 size_t sizeof_sym_hist;


 if (size > (SIZE_MAX - sizeof(struct sym_hist)) / sizeof(u64))
  return -1;

 sizeof_sym_hist = (sizeof(struct sym_hist) + size * sizeof(u64));


 if (sizeof_sym_hist > (SIZE_MAX - sizeof(*notes->src))
    / symbol_conf.nr_events)
  return -1;

 notes->src = zalloc(sizeof(*notes->src) + symbol_conf.nr_events * sizeof_sym_hist);
 if (notes->src == ((void*)0))
  return -1;
 notes->src->sizeof_sym_hist = sizeof_sym_hist;
 notes->src->nr_histograms = symbol_conf.nr_events;
 INIT_LIST_HEAD(&notes->src->source);
 return 0;
}
