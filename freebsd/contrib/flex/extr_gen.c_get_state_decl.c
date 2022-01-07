
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ gentables ;

__attribute__((used)) static const char *get_state_decl (void)
{
 return (gentables)
  ? "static yyconst yy_state_type %s[%d] =\n    {   0,\n"
  : "static yyconst yy_state_type * %s = 0;\n";
}
