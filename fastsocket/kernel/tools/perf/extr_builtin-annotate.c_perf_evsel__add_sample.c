
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_6__ ;
typedef struct TYPE_12__ TYPE_5__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


struct perf_sample {scalar_t__ period; } ;
struct TYPE_11__ {int total_period; } ;
struct TYPE_13__ {TYPE_4__ stats; } ;
struct perf_evsel {TYPE_6__ hists; int idx; } ;
struct perf_annotate {int * sym_hist_filter; } ;
struct TYPE_10__ {int * sym; } ;
struct hist_entry {TYPE_3__ ms; } ;
struct annotation {int * src; } ;
struct addr_location {int addr; TYPE_5__* sym; TYPE_2__* map; } ;
struct TYPE_12__ {int rb_node; int name; } ;
struct TYPE_9__ {size_t type; TYPE_1__* dso; } ;
struct TYPE_8__ {int * symbols; } ;


 int ENOMEM ;
 int PERF_RECORD_SAMPLE ;
 struct hist_entry* __hists__add_entry (TYPE_6__*,struct addr_location*,int *,int) ;
 int hist_entry__inc_addr_samples (struct hist_entry*,int ,int ) ;
 int hists__inc_nr_events (TYPE_6__*,int ) ;
 int rb_erase (int *,int *) ;
 scalar_t__ strcmp (int *,int ) ;
 scalar_t__ symbol__alloc_hist (int *) ;
 struct annotation* symbol__annotation (int *) ;
 int symbol__delete (TYPE_5__*) ;

__attribute__((used)) static int perf_evsel__add_sample(struct perf_evsel *evsel,
      struct perf_sample *sample,
      struct addr_location *al,
      struct perf_annotate *ann)
{
 struct hist_entry *he;
 int ret;

 if (ann->sym_hist_filter != ((void*)0) &&
     (al->sym == ((void*)0) ||
      strcmp(ann->sym_hist_filter, al->sym->name) != 0)) {

  if (al->sym != ((void*)0)) {
   rb_erase(&al->sym->rb_node,
     &al->map->dso->symbols[al->map->type]);
   symbol__delete(al->sym);
  }
  return 0;
 }

 he = __hists__add_entry(&evsel->hists, al, ((void*)0), 1);
 if (he == ((void*)0))
  return -ENOMEM;

 ret = 0;
 if (he->ms.sym != ((void*)0)) {
  struct annotation *notes = symbol__annotation(he->ms.sym);
  if (notes->src == ((void*)0) && symbol__alloc_hist(he->ms.sym) < 0)
   return -ENOMEM;

  ret = hist_entry__inc_addr_samples(he, evsel->idx, al->addr);
 }

 evsel->hists.stats.total_period += sample->period;
 hists__inc_nr_events(&evsel->hists, PERF_RECORD_SAMPLE);
 return ret;
}
