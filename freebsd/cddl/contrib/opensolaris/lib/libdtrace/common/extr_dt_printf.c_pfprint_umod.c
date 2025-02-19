
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int caddr_t ;
typedef int FILE ;


 int dt_print_umod (int *,int *,char const*,int ) ;

__attribute__((used)) static int
pfprint_umod(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 return (dt_print_umod(dtp, fp, format, (caddr_t)addr));
}
