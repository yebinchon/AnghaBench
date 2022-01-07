
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int make_cleanup (int ,char*) ;
 char* savestring (char*,int) ;
 char* skip_spaces (char*) ;
 int strcspn (char*,char*) ;
 int xfree ;
 char* xstrdup (char const*) ;

char *
scan_expression_with_cleanup (char **cmd, const char *def)
{
  if ((*cmd) == ((void*)0) || (**cmd) == '\0')
    {
      char *exp = xstrdup (def);
      make_cleanup (xfree, exp);
      return exp;
    }
  else
    {
      char *exp;
      char *end;

      end = (*cmd) + strcspn (*cmd, " \t");
      exp = savestring ((*cmd), end - (*cmd));
      make_cleanup (xfree, exp);
      (*cmd) = skip_spaces (end);
      return exp;
    }
}
