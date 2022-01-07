
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
typedef scalar_t__ int64_t ;
typedef int dtrace_hdl_t ;
typedef int dtrace_aggdata_t ;
typedef int c ;
typedef int FILE ;


 int DTRACE_LQUANTIZE_BASE (int ) ;
 int DTRACE_LQUANTIZE_LEVELS (int ) ;
 int DTRACE_LQUANTIZE_STEP (int ) ;
 int EDT_DMISMATCH ;
 scalar_t__ dt_print_packed (int *,int *,scalar_t__ const,long double) ;
 int dt_printf (int *,int *,char*,...) ;
 int dt_quantize_total (int *,scalar_t__ const,long double*) ;
 int dt_set_errno (int *,int ) ;
 int snprintf (char*,int,char*,int) ;

int
dt_print_lquantize_packed(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, const dtrace_aggdata_t *aggdata)
{
 const int64_t *data = addr;
 long double total = 0, count = 0;
 int min, max, base, err;
 uint64_t arg;
 uint16_t step, levels;
 char c[32];
 unsigned int i;

 if (size < sizeof (uint64_t))
  return (dt_set_errno(dtp, EDT_DMISMATCH));

 arg = *data++;
 size -= sizeof (uint64_t);

 base = DTRACE_LQUANTIZE_BASE(arg);
 step = DTRACE_LQUANTIZE_STEP(arg);
 levels = DTRACE_LQUANTIZE_LEVELS(arg);

 if (size != sizeof (uint64_t) * (levels + 2))
  return (dt_set_errno(dtp, EDT_DMISMATCH));

 min = 0;
 max = levels + 1;

 if (min == 0) {
  (void) snprintf(c, sizeof (c), "< %d", base);
  err = dt_printf(dtp, fp, "%8s :", c);
 } else {
  err = dt_printf(dtp, fp, "%8d :", base + (min - 1) * step);
 }

 if (err < 0)
  return (-1);

 for (i = min; i <= max; i++) {
  dt_quantize_total(dtp, data[i], &total);
  count += data[i];
 }

 for (i = min; i <= max; i++) {
  if (dt_print_packed(dtp, fp, data[i], total) < 0)
   return (-1);
 }

 (void) snprintf(c, sizeof (c), ">= %d", base + (levels * step));
 return (dt_printf(dtp, fp, ": %-8s | %lld\n", c, (long long)count));
}
