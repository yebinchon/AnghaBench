
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int type; } ;
union perf_event {TYPE_1__ header; } ;
typedef int FILE ;






 size_t fprintf (int *,char*,...) ;
 size_t perf_event__fprintf_comm (union perf_event*,int *) ;
 size_t perf_event__fprintf_mmap (union perf_event*,int *) ;
 size_t perf_event__fprintf_task (union perf_event*,int *) ;
 char* perf_event__name (int) ;

size_t perf_event__fprintf(union perf_event *event, FILE *fp)
{
 size_t ret = fprintf(fp, "PERF_RECORD_%s",
        perf_event__name(event->header.type));

 switch (event->header.type) {
 case 131:
  ret += perf_event__fprintf_comm(event, fp);
  break;
 case 129:
 case 130:
  ret += perf_event__fprintf_task(event, fp);
  break;
 case 128:
  ret += perf_event__fprintf_mmap(event, fp);
  break;
 default:
  ret += fprintf(fp, "\n");
 }

 return ret;
}
