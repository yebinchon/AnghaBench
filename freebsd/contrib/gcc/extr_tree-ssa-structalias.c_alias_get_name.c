
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;


 scalar_t__ DECL_P (int ) ;
 int DECL_UID (int ) ;
 scalar_t__ SSA_NAME ;
 int SSA_NAME_VAR (int ) ;
 int SSA_NAME_VERSION (int ) ;
 scalar_t__ TREE_CODE (int ) ;
 int asprintf (char**,char*,char const*,...) ;
 int dump_file ;
 int free (char*) ;
 char* get_name (int ) ;
 char* ggc_strdup (char*) ;

__attribute__((used)) static const char *
alias_get_name (tree decl)
{
  const char *res = get_name (decl);
  char *temp;
  int num_printed = 0;

  if (res != ((void*)0))
    return res;

  res = "NULL";
  if (!dump_file)
    return res;

  if (TREE_CODE (decl) == SSA_NAME)
    {
      num_printed = asprintf (&temp, "%s_%u",
         alias_get_name (SSA_NAME_VAR (decl)),
         SSA_NAME_VERSION (decl));
    }
  else if (DECL_P (decl))
    {
      num_printed = asprintf (&temp, "D.%u", DECL_UID (decl));
    }
  if (num_printed > 0)
    {
      res = ggc_strdup (temp);
      free (temp);
    }
  return res;
}
