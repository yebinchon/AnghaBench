
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct perf_sample_id {int node; int id; struct perf_evsel* evsel; } ;
struct perf_evsel {int dummy; } ;
struct perf_evlist {int * heads; } ;


 int PERF_EVLIST__HLIST_BITS ;
 struct perf_sample_id* SID (struct perf_evsel*,int,int) ;
 int hash_64 (int ,int ) ;
 int hlist_add_head (int *,int *) ;

__attribute__((used)) static void perf_evlist__id_hash(struct perf_evlist *evlist,
     struct perf_evsel *evsel,
     int cpu, int thread, u64 id)
{
 int hash;
 struct perf_sample_id *sid = SID(evsel, cpu, thread);

 sid->id = id;
 sid->evsel = evsel;
 hash = hash_64(sid->id, PERF_EVLIST__HLIST_BITS);
 hlist_add_head(&sid->node, &evlist->heads[hash]);
}
