
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int wchar_t ;
typedef int uint64_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int FILE ;


 int* alloca (size_t) ;
 int bcopy (void const*,int*,size_t) ;
 int dt_printf (int *,int *,char const*,int*) ;

__attribute__((used)) static int
pfprint_wstr(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 wchar_t *ws = alloca(size + sizeof (wchar_t));

 bcopy(addr, ws, size);
 ws[size / sizeof (wchar_t)] = L'\0';
 return (dt_printf(dtp, fp, format, ws));
}
