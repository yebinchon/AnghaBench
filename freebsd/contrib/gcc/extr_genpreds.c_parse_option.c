
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_constrs ;
 int gen_header ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static bool
parse_option (const char *opt)
{
  if (!strcmp (opt, "-h"))
    {
      gen_header = 1;
      return 1;
    }
  else if (!strcmp (opt, "-c"))
    {
      gen_constrs = 1;
      return 1;
    }
  else
    return 0;
}
