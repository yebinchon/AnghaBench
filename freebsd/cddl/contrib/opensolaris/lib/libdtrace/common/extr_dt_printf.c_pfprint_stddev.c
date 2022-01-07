
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int FILE ;


 int EDT_DMISMATCH ;
 int dt_printf (int *,int *,char const*,int ) ;
 int dt_set_errno (int *,int ) ;
 int dt_stddev (int *,int ) ;

__attribute__((used)) static int
pfprint_stddev(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 const uint64_t *data = addr;

 if (size != sizeof (uint64_t) * 4)
  return (dt_set_errno(dtp, EDT_DMISMATCH));

 return (dt_printf(dtp, fp, format,
     dt_stddev((uint64_t *)data, normal)));
}
