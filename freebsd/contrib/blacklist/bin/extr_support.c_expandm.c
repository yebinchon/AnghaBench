
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int errno ;
 char const* strerror (int ) ;
 int strlcat (char*,char const*,size_t) ;
 int strlcpy (char*,char const*,size_t) ;
 char* strstr (char const*,char*) ;

__attribute__((used)) static __attribute__((__format_arg__(3))) const char *
expandm(char *buf, size_t len, const char *fmt)
{
 char *p;
 size_t r;

 if ((p = strstr(fmt, "%m")) == ((void*)0))
  return fmt;

 r = (size_t)(p - fmt);
 if (r >= len)
  return fmt;

 strlcpy(buf, fmt, r + 1);
 strlcat(buf, strerror(errno), len);
 strlcat(buf, fmt + r + 2, len);

 return buf;
}
