
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct symbol {char* name; } ;
struct perf_top {int sym_pcnt_filter; TYPE_2__* sym_evsel; scalar_t__ zero; int print_entries; struct hist_entry* sym_filter_entry; } ;
struct TYPE_3__ {int map; struct symbol* sym; } ;
struct hist_entry {TYPE_1__ ms; } ;
struct annotation {int lock; int * src; } ;
struct TYPE_4__ {int idx; } ;


 char* perf_evsel__name (TYPE_2__*) ;
 int printf (char*,...) ;
 int pthread_mutex_lock (int *) ;
 int pthread_mutex_unlock (int *) ;
 int symbol__annotate_decay_histogram (struct symbol*,int ) ;
 int symbol__annotate_printf (struct symbol*,int ,int ,int ,int,int ,int) ;
 int symbol__annotate_zero_histogram (struct symbol*,int ) ;
 struct annotation* symbol__annotation (struct symbol*) ;

__attribute__((used)) static void perf_top__show_details(struct perf_top *top)
{
 struct hist_entry *he = top->sym_filter_entry;
 struct annotation *notes;
 struct symbol *symbol;
 int more;

 if (!he)
  return;

 symbol = he->ms.sym;
 notes = symbol__annotation(symbol);

 pthread_mutex_lock(&notes->lock);

 if (notes->src == ((void*)0))
  goto out_unlock;

 printf("Showing %s for %s\n", perf_evsel__name(top->sym_evsel), symbol->name);
 printf("  Events  Pcnt (>=%d%%)\n", top->sym_pcnt_filter);

 more = symbol__annotate_printf(symbol, he->ms.map, top->sym_evsel->idx,
           0, top->sym_pcnt_filter, top->print_entries, 4);
 if (top->zero)
  symbol__annotate_zero_histogram(symbol, top->sym_evsel->idx);
 else
  symbol__annotate_decay_histogram(symbol, top->sym_evsel->idx);
 if (more != 0)
  printf("%d lines not displayed, maybe increase display entries [e]\n", more);
out_unlock:
 pthread_mutex_unlock(&notes->lock);
}
