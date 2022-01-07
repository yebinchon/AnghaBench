
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int processorid_t ;
typedef scalar_t__ dtrace_optval_t ;
struct TYPE_10__ {int dtbd_size; int * dtbd_data; } ;
struct TYPE_11__ {int dtat_maxcpu; int dtat_ncpu; int* dtat_cpus; scalar_t__ dtat_ncpus; TYPE_2__ dtat_buf; } ;
struct TYPE_9__ {scalar_t__* dt_options; TYPE_3__ dt_aggregate; } ;
typedef TYPE_1__ dtrace_hdl_t ;
typedef TYPE_2__ dtrace_bufdesc_t ;
typedef TYPE_3__ dt_aggregate_t ;


 size_t DTRACEOPT_AGGSIZE ;
 scalar_t__ DTRACEOPT_UNSET ;
 scalar_t__ DTRACE_CPUALL ;
 int EDT_NOMEM ;
 int _SC_CPUID_MAX ;
 int _SC_NPROCESSORS_MAX ;
 int assert (int) ;
 int dt_set_errno (TYPE_1__*,int ) ;
 int dt_status (TYPE_1__*,int) ;
 void* dt_sysconf (TYPE_1__*,int ) ;
 int dtrace_getopt (TYPE_1__*,char*,scalar_t__*) ;
 void* malloc (int) ;

int
dt_aggregate_go(dtrace_hdl_t *dtp)
{
 dt_aggregate_t *agp = &dtp->dt_aggregate;
 dtrace_optval_t size, cpu;
 dtrace_bufdesc_t *buf = &agp->dtat_buf;
 int rval, i;

 assert(agp->dtat_maxcpu == 0);
 assert(agp->dtat_ncpu == 0);
 assert(agp->dtat_cpus == ((void*)0));

 agp->dtat_maxcpu = dt_sysconf(dtp, _SC_CPUID_MAX) + 1;
 agp->dtat_ncpu = dt_sysconf(dtp, _SC_NPROCESSORS_MAX);
 agp->dtat_cpus = malloc(agp->dtat_ncpu * sizeof (processorid_t));

 if (agp->dtat_cpus == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));




 size = dtp->dt_options[DTRACEOPT_AGGSIZE];

 rval = dtrace_getopt(dtp, "aggsize", &size);
 assert(rval == 0);

 if (size == 0 || size == DTRACEOPT_UNSET)
  return (0);

 buf = &agp->dtat_buf;
 buf->dtbd_size = size;

 if ((buf->dtbd_data = malloc(buf->dtbd_size)) == ((void*)0))
  return (dt_set_errno(dtp, EDT_NOMEM));




 rval = dtrace_getopt(dtp, "cpu", &cpu);
 assert(rval == 0 && cpu != DTRACEOPT_UNSET);

 if (cpu != DTRACE_CPUALL) {
  assert(cpu < agp->dtat_ncpu);
  agp->dtat_cpus[agp->dtat_ncpus++] = (processorid_t)cpu;

  return (0);
 }

 agp->dtat_ncpus = 0;
 for (i = 0; i < agp->dtat_maxcpu; i++) {
  if (dt_status(dtp, i) == -1)
   continue;

  agp->dtat_cpus[agp->dtat_ncpus++] = i;
 }

 return (0);
}
