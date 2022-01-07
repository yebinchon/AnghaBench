
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int pipe_output; } ;
struct perf_record {int evlist; TYPE_3__* session; int output; int no_buildid; scalar_t__ bytes_written; TYPE_1__ opts; } ;
struct TYPE_6__ {int data_size; } ;
struct TYPE_7__ {TYPE_2__ header; } ;


 int perf_evlist__delete (int ) ;
 int perf_session__delete (TYPE_3__*) ;
 int perf_session__write_header (TYPE_3__*,int ,int ,int) ;
 int process_buildids (struct perf_record*) ;
 int symbol__exit () ;

__attribute__((used)) static void perf_record__exit(int status, void *arg)
{
 struct perf_record *rec = arg;

 if (status != 0)
  return;

 if (!rec->opts.pipe_output) {
  rec->session->header.data_size += rec->bytes_written;

  if (!rec->no_buildid)
   process_buildids(rec);
  perf_session__write_header(rec->session, rec->evlist,
        rec->output, 1);
  perf_session__delete(rec->session);
  perf_evlist__delete(rec->evlist);
  symbol__exit();
 }
}
