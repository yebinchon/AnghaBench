
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint16_t ;
struct servent {char* s_name; } ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int buf ;
typedef int FILE ;


 int dt_printf (int *,int *,char const*,char*) ;
 struct servent* getservbyport_r (int,int *,struct servent*,char*,int,...) ;
 int htons (int) ;
 int snprintf (char*,int,char*,int) ;

__attribute__((used)) static int
pfprint_port(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 uint16_t port = htons(*((uint16_t *)addr));
 char buf[256];
 struct servent *sv, res;




 if (getservbyport_r(port, ((void*)0), &res, buf, sizeof (buf), &sv) > 0)

  return (dt_printf(dtp, fp, format, sv->s_name));

 (void) snprintf(buf, sizeof (buf), "%d", *((uint16_t *)addr));
 return (dt_printf(dtp, fp, format, buf));
}
