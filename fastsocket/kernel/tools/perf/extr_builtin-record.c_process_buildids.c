
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u64 ;
struct perf_record {scalar_t__ post_processing_offset; TYPE_1__* session; int output; } ;
struct TYPE_2__ {int fd; } ;


 int SEEK_CUR ;
 int __perf_session__process_events (TYPE_1__*,scalar_t__,scalar_t__,scalar_t__,int *) ;
 int build_id__mark_dso_hit_ops ;
 scalar_t__ lseek (int ,int ,int ) ;

__attribute__((used)) static int process_buildids(struct perf_record *rec)
{
 u64 size = lseek(rec->output, 0, SEEK_CUR);

 if (size == 0)
  return 0;

 rec->session->fd = rec->output;
 return __perf_session__process_events(rec->session, rec->post_processing_offset,
           size - rec->post_processing_offset,
           size, &build_id__mark_dso_hit_ops);
}
