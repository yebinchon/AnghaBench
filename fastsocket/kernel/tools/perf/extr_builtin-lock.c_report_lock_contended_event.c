
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u64 ;
struct thread_stat {int dummy; } ;
struct perf_sample {int time; int tid; } ;
struct perf_evsel {int dummy; } ;
struct lock_stat {int discard; int nr_contended; } ;
struct lock_seq_stat {int state; int prev_event_time; int list; } ;


 size_t BROKEN_CONTENDED ;
 int BUG_ON (char*) ;






 int * bad_hist ;
 int free (struct lock_seq_stat*) ;
 struct lock_seq_stat* get_seq (struct thread_stat*,void*) ;
 int list_del (int *) ;
 struct lock_stat* lock_stat_findnew (void*,char const*) ;
 int memcpy (void**,int *,int) ;
 int perf_evsel__intval (struct perf_evsel*,struct perf_sample*,char*) ;
 char* perf_evsel__strval (struct perf_evsel*,struct perf_sample*,char*) ;
 struct thread_stat* thread_stat_findnew (int ) ;

__attribute__((used)) static int report_lock_contended_event(struct perf_evsel *evsel,
           struct perf_sample *sample)
{
 void *addr;
 struct lock_stat *ls;
 struct thread_stat *ts;
 struct lock_seq_stat *seq;
 const char *name = perf_evsel__strval(evsel, sample, "name");
 u64 tmp = perf_evsel__intval(evsel, sample, "lockdep_addr");

 memcpy(&addr, &tmp, sizeof(void *));

 ls = lock_stat_findnew(addr, name);
 if (!ls)
  return -1;
 if (ls->discard)
  return 0;

 ts = thread_stat_findnew(sample->tid);
 if (!ts)
  return -1;

 seq = get_seq(ts, addr);
 if (!seq)
  return -1;

 switch (seq->state) {
 case 128:

  return 0;
 case 132:
  break;
 case 129:
 case 133:
 case 130:
 case 131:

  ls->discard = 1;
  bad_hist[BROKEN_CONTENDED]++;
  list_del(&seq->list);
  free(seq);
  goto end;
  break;
 default:
  BUG_ON("Unknown state of lock sequence found!\n");
  break;
 }

 seq->state = 131;
 ls->nr_contended++;
 seq->prev_event_time = sample->time;
end:
 return 0;
}
