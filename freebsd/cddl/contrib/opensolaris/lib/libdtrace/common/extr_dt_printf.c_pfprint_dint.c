
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint64_t ;
typedef int dtrace_hdl_t ;
struct TYPE_5__ {int pfd_flags; } ;
typedef TYPE_1__ dt_pfargd_t ;
typedef int FILE ;


 int DT_PFCONV_SIGNED ;
 int pfprint_sint (int *,int *,char const*,TYPE_1__ const*,void const*,size_t,int ) ;
 int pfprint_uint (int *,int *,char const*,TYPE_1__ const*,void const*,size_t,int ) ;

__attribute__((used)) static int
pfprint_dint(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 if (pfd->pfd_flags & DT_PFCONV_SIGNED)
  return (pfprint_sint(dtp, fp, format, pfd, addr, size, normal));
 else
  return (pfprint_uint(dtp, fp, format, pfd, addr, size, normal));
}
