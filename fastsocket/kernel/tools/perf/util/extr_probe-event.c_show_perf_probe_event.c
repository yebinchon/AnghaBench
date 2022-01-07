
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct perf_probe_event {int nargs; int * args; int event; int group; int point; } ;


 int EINVAL ;
 int e_snprintf (char*,int,char*,int ,int ) ;
 int free (char*) ;
 int printf (char*,...) ;
 int synthesize_perf_probe_arg (int *,char*,int) ;
 char* synthesize_perf_probe_point (int *) ;

__attribute__((used)) static int show_perf_probe_event(struct perf_probe_event *pev)
{
 int i, ret;
 char buf[128];
 char *place;


 place = synthesize_perf_probe_point(&pev->point);
 if (!place)
  return -EINVAL;

 ret = e_snprintf(buf, 128, "%s:%s", pev->group, pev->event);
 if (ret < 0)
  return ret;

 printf("  %-20s (on %s", buf, place);

 if (pev->nargs > 0) {
  printf(" with");
  for (i = 0; i < pev->nargs; i++) {
   ret = synthesize_perf_probe_arg(&pev->args[i],
       buf, 128);
   if (ret < 0)
    break;
   printf(" %s", buf);
  }
 }
 printf(")\n");
 free(place);
 return ret;
}
