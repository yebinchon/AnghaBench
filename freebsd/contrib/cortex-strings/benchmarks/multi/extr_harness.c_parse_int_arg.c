
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ errno ;
 long strtol (char const*,int *,int ) ;
 int usage (char const*) ;

__attribute__((used)) static int parse_int_arg(const char *arg, const char *exe_name)
{
  long int ret;

  errno = 0;
  ret = strtol(arg, ((void*)0), 0);

  if (errno)
    {
      usage(exe_name);
    }

  return (int)ret;
}
