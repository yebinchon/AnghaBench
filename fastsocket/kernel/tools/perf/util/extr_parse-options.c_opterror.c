
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int long_name; int short_name; } ;


 int OPT_SHORT ;
 int OPT_UNSET ;
 int error (char*,int ,char const*) ;

__attribute__((used)) static int opterror(const struct option *opt, const char *reason, int flags)
{
 if (flags & OPT_SHORT)
  return error("switch `%c' %s", opt->short_name, reason);
 if (flags & OPT_UNSET)
  return error("option `no-%s' %s", opt->long_name, reason);
 return error("option `%s' %s", opt->long_name, reason);
}
