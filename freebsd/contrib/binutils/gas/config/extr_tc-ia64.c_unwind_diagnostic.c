
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ unwind_check; } ;


 int as_bad (char*,char const*,char const*) ;
 int as_warn (char*,char const*,char const*) ;
 int ignore_rest_of_line () ;
 TYPE_1__ md ;
 scalar_t__ unwind_check_warning ;

__attribute__((used)) static int
unwind_diagnostic (const char * region, const char *directive)
{
  if (md.unwind_check == unwind_check_warning)
    {
      as_warn (".%s outside of %s", directive, region);
      return -1;
    }
  else
    {
      as_bad (".%s outside of %s", directive, region);
      ignore_rest_of_line ();
      return 0;
    }
}
