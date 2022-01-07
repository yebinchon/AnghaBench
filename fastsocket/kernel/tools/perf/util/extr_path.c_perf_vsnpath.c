
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int bad_path ;
 char* cleanup_path (char*) ;
 char* get_perf_dir () ;
 int is_dir_sep (char const) ;
 int memcpy (char*,char const*,size_t) ;
 int strlcpy (char*,int ,size_t) ;
 size_t strlen (char const*) ;
 scalar_t__ vsnprintf (char*,size_t,char const*,int ) ;

__attribute__((used)) static char *perf_vsnpath(char *buf, size_t n, const char *fmt, va_list args)
{
 const char *perf_dir = get_perf_dir();
 size_t len;

 len = strlen(perf_dir);
 if (n < len + 1)
  goto bad;
 memcpy(buf, perf_dir, len);
 if (len && !is_dir_sep(perf_dir[len-1]))
  buf[len++] = '/';
 len += vsnprintf(buf + len, n - len, fmt, args);
 if (len >= n)
  goto bad;
 return cleanup_path(buf);
bad:
 strlcpy(buf, bad_path, n);
 return buf;
}
