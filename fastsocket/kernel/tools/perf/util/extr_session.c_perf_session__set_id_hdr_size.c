
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
struct TYPE_2__ {int id_hdr_size; } ;
struct perf_session {int machines; TYPE_1__ host_machine; int evlist; } ;


 int machines__set_id_hdr_size (int *,int ) ;
 int perf_evlist__id_hdr_size (int ) ;

void perf_session__set_id_hdr_size(struct perf_session *session)
{
 u16 id_hdr_size = perf_evlist__id_hdr_size(session->evlist);

 session->host_machine.id_hdr_size = id_hdr_size;
 machines__set_id_hdr_size(&session->machines, id_hdr_size);
}
