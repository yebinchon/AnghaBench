
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct option {int dummy; } ;


 int usage_with_options_internal (char const* const*,struct option const*,int ) ;

int parse_options_usage(const char * const *usagestr,
   const struct option *opts)
{
 return usage_with_options_internal(usagestr, opts, 0);
}
