
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef enum cpp_ttype { ____Placeholder_cpp_ttype } cpp_ttype ;


 scalar_t__ CPP_EOF ;
 int CPP_STRING ;
 int NULL_TREE ;
 int error (char*,char const*) ;
 int error_mark_node ;
 scalar_t__ pragma_lex (int *) ;
 int warning (int ,char*,char const*) ;

__attribute__((used)) static tree
parse_strconst_pragma (const char* name, int opt)
{
  tree result, x;
  enum cpp_ttype t;

  t = pragma_lex (&result);
  if (t == CPP_STRING)
    {
      if (pragma_lex (&x) != CPP_EOF)
 warning (0, "junk at end of #pragma %s", name);
      return result;
    }

  if (t == CPP_EOF && opt)
    return NULL_TREE;

  error ("invalid #pragma %s", name);
  return error_mark_node;
}
