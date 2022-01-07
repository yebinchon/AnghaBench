
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct perf_top {int hide_kernel_symbols; int hide_user_symbols; TYPE_2__* sym_evsel; TYPE_1__* evlist; } ;
struct TYPE_4__ {int hists; } ;
struct TYPE_3__ {TYPE_2__* selected; } ;


 int hists__collapse_resort_threaded (int *) ;
 int hists__decay_entries_threaded (int *,int ,int ) ;
 int hists__output_resort_threaded (int *) ;
 int perf_top__reset_sample_counters (struct perf_top*) ;

__attribute__((used)) static void perf_top__sort_new_samples(void *arg)
{
 struct perf_top *t = arg;
 perf_top__reset_sample_counters(t);

 if (t->evlist->selected != ((void*)0))
  t->sym_evsel = t->evlist->selected;

 hists__collapse_resort_threaded(&t->sym_evsel->hists);
 hists__output_resort_threaded(&t->sym_evsel->hists);
 hists__decay_entries_threaded(&t->sym_evsel->hists,
          t->hide_user_symbols,
          t->hide_kernel_symbols);
}
