
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_session {int machines; int host_machine; } ;
typedef int FILE ;


 size_t machine__fprintf_dsos_buildid (int *,int *,int) ;
 size_t machines__fprintf_dsos_buildid (int *,int *,int) ;

size_t perf_session__fprintf_dsos_buildid(struct perf_session *self, FILE *fp,
       bool with_hits)
{
 size_t ret = machine__fprintf_dsos_buildid(&self->host_machine, fp, with_hits);
 return ret + machines__fprintf_dsos_buildid(&self->machines, fp, with_hits);
}
