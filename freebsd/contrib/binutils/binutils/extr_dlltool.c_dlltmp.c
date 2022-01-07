
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* malloc (scalar_t__) ;
 int sprintf (char*,char const*,int ) ;
 scalar_t__ strlen (int ) ;
 int tmp_prefix ;

__attribute__((used)) static char *
dlltmp (char **buf, const char *fmt)
{
  if (!*buf)
    {
      *buf = malloc (strlen (tmp_prefix) + 64);
      sprintf (*buf, fmt, tmp_prefix);
    }
  return *buf;
}
