
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef scalar_t__ t ;
typedef int c_pretty_printer ;


 scalar_t__ DECL_NAME (int ) ;
 int DECL_P (int ) ;
 char* IDENTIFIER_POINTER (scalar_t__) ;
 int gcc_assert (int ) ;
 int pp_c_identifier (int *,char const*) ;
 int sprintf (char*,char*,unsigned int) ;

void
pp_c_tree_decl_identifier (c_pretty_printer *pp, tree t)
{
  const char *name;

  gcc_assert (DECL_P (t));

  if (DECL_NAME (t))
    name = IDENTIFIER_POINTER (DECL_NAME (t));
  else
    {
      static char xname[8];
      sprintf (xname, "<U%4x>", ((unsigned)((unsigned long)(t) & 0xffff)));
      name = xname;
    }

  pp_c_identifier (pp, name);
}
