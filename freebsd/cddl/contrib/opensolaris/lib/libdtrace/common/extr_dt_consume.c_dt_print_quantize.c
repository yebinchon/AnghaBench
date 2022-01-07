
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef scalar_t__ int64_t ;
typedef int dtrace_hdl_t ;
typedef int FILE ;


 scalar_t__ DTRACE_QUANTIZE_BUCKETVAL (int) ;
 int DTRACE_QUANTIZE_NBUCKETS ;
 int DTRACE_QUANTIZE_ZEROBUCKET ;
 int EDT_DMISMATCH ;
 scalar_t__ dt_print_quanthdr (int *,int *,int ) ;
 scalar_t__ dt_print_quantline (int *,int *,scalar_t__ const,int ,long double,char,char) ;
 scalar_t__ dt_printf (int *,int *,char*,long long) ;
 int dt_quantize_total (int *,scalar_t__ const,long double*) ;
 int dt_set_errno (int *,int ) ;

int
dt_print_quantize(dtrace_hdl_t *dtp, FILE *fp, const void *addr,
    size_t size, uint64_t normal)
{
 const int64_t *data = addr;
 int i, first_bin = 0, last_bin = DTRACE_QUANTIZE_NBUCKETS - 1;
 long double total = 0;
 char positives = 0, negatives = 0;

 if (size != DTRACE_QUANTIZE_NBUCKETS * sizeof (uint64_t))
  return (dt_set_errno(dtp, EDT_DMISMATCH));

 while (first_bin < DTRACE_QUANTIZE_NBUCKETS - 1 && data[first_bin] == 0)
  first_bin++;

 if (first_bin == DTRACE_QUANTIZE_NBUCKETS - 1) {





  first_bin = DTRACE_QUANTIZE_ZEROBUCKET - 1;
  last_bin = DTRACE_QUANTIZE_ZEROBUCKET + 1;
 } else {
  if (first_bin > 0)
   first_bin--;

  while (last_bin > 0 && data[last_bin] == 0)
   last_bin--;

  if (last_bin < DTRACE_QUANTIZE_NBUCKETS - 1)
   last_bin++;
 }

 for (i = first_bin; i <= last_bin; i++) {
  positives |= (data[i] > 0);
  negatives |= (data[i] < 0);
  dt_quantize_total(dtp, data[i], &total);
 }

 if (dt_print_quanthdr(dtp, fp, 0) < 0)
  return (-1);

 for (i = first_bin; i <= last_bin; i++) {
  if (dt_printf(dtp, fp, "%16lld ",
      (long long)DTRACE_QUANTIZE_BUCKETVAL(i)) < 0)
   return (-1);

  if (dt_print_quantline(dtp, fp, data[i], normal, total,
      positives, negatives) < 0)
   return (-1);
 }

 return (0);
}
