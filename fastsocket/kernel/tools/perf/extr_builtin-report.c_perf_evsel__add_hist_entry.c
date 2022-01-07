
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct symbol {int dummy; } ;
struct perf_sample {int period; scalar_t__ callchain; } ;
struct TYPE_7__ {int total_period; } ;
struct TYPE_9__ {TYPE_2__ stats; } ;
struct perf_evsel {TYPE_4__ hists; int idx; } ;
struct machine {int dummy; } ;
struct TYPE_6__ {int * sym; } ;
struct hist_entry {TYPE_1__ ms; int callchain; } ;
struct annotation {int * src; } ;
struct addr_location {int addr; int thread; } ;
struct TYPE_8__ {scalar_t__ use_callchain; } ;


 int ENOMEM ;
 int PERF_RECORD_SAMPLE ;
 struct hist_entry* __hists__add_entry (TYPE_4__*,struct addr_location*,struct symbol*,int ) ;
 int assert (int ) ;
 int callchain_append (int ,int *,int ) ;
 int callchain_cursor ;
 int hist_entry__inc_addr_samples (struct hist_entry*,int ,int ) ;
 int hists__inc_nr_events (TYPE_4__*,int ) ;
 int machine__resolve_callchain (struct machine*,struct perf_evsel*,int ,struct perf_sample*,struct symbol**) ;
 scalar_t__ sort__has_parent ;
 scalar_t__ sort__has_sym ;
 scalar_t__ symbol__alloc_hist (int *) ;
 struct annotation* symbol__annotation (int *) ;
 TYPE_3__ symbol_conf ;
 int use_browser ;

__attribute__((used)) static int perf_evsel__add_hist_entry(struct perf_evsel *evsel,
          struct addr_location *al,
          struct perf_sample *sample,
          struct machine *machine)
{
 struct symbol *parent = ((void*)0);
 int err = 0;
 struct hist_entry *he;

 if ((sort__has_parent || symbol_conf.use_callchain) && sample->callchain) {
  err = machine__resolve_callchain(machine, evsel, al->thread,
       sample, &parent);
  if (err)
   return err;
 }

 he = __hists__add_entry(&evsel->hists, al, parent, sample->period);
 if (he == ((void*)0))
  return -ENOMEM;

 if (symbol_conf.use_callchain) {
  err = callchain_append(he->callchain,
           &callchain_cursor,
           sample->period);
  if (err)
   return err;
 }





 if (he->ms.sym != ((void*)0) && use_browser == 1 && sort__has_sym) {
  struct annotation *notes = symbol__annotation(he->ms.sym);

  assert(evsel != ((void*)0));

  err = -ENOMEM;
  if (notes->src == ((void*)0) && symbol__alloc_hist(he->ms.sym) < 0)
   goto out;

  err = hist_entry__inc_addr_samples(he, evsel->idx, al->addr);
 }

 evsel->hists.stats.total_period += sample->period;
 hists__inc_nr_events(&evsel->hists, PERF_RECORD_SAMPLE);
out:
 return err;
}
