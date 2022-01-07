
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int FILE ;


 char* alloca (size_t) ;
 int bcopy (void const*,char*,size_t) ;
 int dt_printf (int *,int *,char const*,char*) ;

__attribute__((used)) static int
pfprint_cstr(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 char *s = alloca(size + 1);

 bcopy(addr, s, size);
 s[size] = '\0';
 return (dt_printf(dtp, fp, format, s));
}
