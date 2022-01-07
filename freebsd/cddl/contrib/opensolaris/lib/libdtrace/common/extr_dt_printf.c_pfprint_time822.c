
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
struct tm {int dummy; } ;
typedef int hrtime_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int buf ;
typedef int FILE ;


 int NANOSEC ;
 int dt_printf (int *,int *,char const*,char*) ;
 int localtime_r (int *,struct tm*) ;
 int strftime (char*,int,char*,struct tm*) ;

__attribute__((used)) static int
pfprint_time822(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 hrtime_t time = *((uint64_t *)addr);
 time_t sec = (time_t)(time / NANOSEC);
 struct tm tm;
 char buf[64];

 (void) localtime_r(&sec, &tm);
 (void) strftime(buf, sizeof (buf), "%a, %d %b %G %T %Z", &tm);
 return (dt_printf(dtp, fp, format, buf));
}
