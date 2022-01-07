
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int exit (int) ;
 int exit_browser (int) ;
 int usage_with_options_internal (char const* const*,struct option const*,int ) ;

void usage_with_options(const char * const *usagestr,
   const struct option *opts)
{
 exit_browser(0);
 usage_with_options_internal(usagestr, opts, 0);
 exit(129);
}
