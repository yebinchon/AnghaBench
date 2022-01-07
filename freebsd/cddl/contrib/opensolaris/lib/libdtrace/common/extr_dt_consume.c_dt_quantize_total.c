
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__* dt_options; } ;
typedef TYPE_1__ dtrace_hdl_t ;


 size_t DTRACEOPT_AGGZOOM ;
 scalar_t__ DTRACEOPT_UNSET ;
 int DTRACE_AGGZOOM_MAX ;
 long double dt_fabsl (long double) ;

__attribute__((used)) static void
dt_quantize_total(dtrace_hdl_t *dtp, int64_t datum, long double *total)
{
 long double val = dt_fabsl((long double)datum);

 if (dtp->dt_options[DTRACEOPT_AGGZOOM] == DTRACEOPT_UNSET) {
  *total += val;
  return;
 }







 val *= 1 / DTRACE_AGGZOOM_MAX;

 if (*total < val)
  *total = val;
}
