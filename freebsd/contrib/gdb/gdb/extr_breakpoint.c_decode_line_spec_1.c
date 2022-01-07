
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symtabs_and_lines {int dummy; } ;
struct symtab {int dummy; } ;


 struct symtabs_and_lines decode_line_1 (char**,int,struct symtab*,int ,char***,int *) ;
 int default_breakpoint_line ;
 struct symtab* default_breakpoint_symtab ;
 scalar_t__ default_breakpoint_valid ;
 int error (char*,...) ;

struct symtabs_and_lines
decode_line_spec_1 (char *string, int funfirstline)
{
  struct symtabs_and_lines sals;
  if (string == 0)
    error ("Empty line specification.");
  if (default_breakpoint_valid)
    sals = decode_line_1 (&string, funfirstline,
     default_breakpoint_symtab,
     default_breakpoint_line,
     (char ***) ((void*)0), ((void*)0));
  else
    sals = decode_line_1 (&string, funfirstline,
     (struct symtab *) ((void*)0), 0, (char ***) ((void*)0), ((void*)0));
  if (*string)
    error ("Junk at end of line specification: %s", string);
  return sals;
}
