
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint64_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int FILE ;


 int EDT_DMISMATCH ;
 int dt_printf (int *,int *,char const*,long double) ;
 int dt_set_errno (int *,int ) ;

__attribute__((used)) static int
pfprint_fp(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 double n = (double)normal;
 long double ldn = (long double)normal;

 switch (size) {
 case sizeof (float):
  return (dt_printf(dtp, fp, format,
      (double)*((float *)addr) / n));
 case sizeof (double):
  return (dt_printf(dtp, fp, format,
      *((double *)addr) / n));


 case sizeof (long double):
  return (dt_printf(dtp, fp, format,
      *((long double *)addr) / ldn));

 default:
  return (dt_set_errno(dtp, EDT_DMISMATCH));
 }
}
