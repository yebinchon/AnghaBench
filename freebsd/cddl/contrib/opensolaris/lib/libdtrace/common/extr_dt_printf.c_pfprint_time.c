
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int time_t ;
typedef int src ;
typedef int hrtime_t ;
typedef int dtrace_hdl_t ;
typedef int dt_pfargd_t ;
typedef int FILE ;


 int NANOSEC ;
 int ctime_r (int *,char*,...) ;
 int dt_printf (int *,int *,char const*,char*) ;

__attribute__((used)) static int
pfprint_time(dtrace_hdl_t *dtp, FILE *fp, const char *format,
    const dt_pfargd_t *pfd, const void *addr, size_t size, uint64_t normal)
{
 char src[32], buf[32], *dst = buf;
 hrtime_t time = *((uint64_t *)addr);
 time_t sec = (time_t)(time / NANOSEC);
 int i;
 (void) ctime_r(&sec, src);





 for (i = 20; i < 24; i++)
  *dst++ = src[i];




 for (i = 3; i < 19; i++)
  *dst++ = src[i];

 *dst = '\0';
 return (dt_printf(dtp, fp, format, buf));
}
