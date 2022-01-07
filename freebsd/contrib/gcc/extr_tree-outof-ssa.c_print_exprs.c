
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 int TDF_SLIM ;
 int fprintf (int *,char*,char const*) ;
 int print_generic_expr (int *,int ,int ) ;

__attribute__((used)) static void
print_exprs (FILE *f, const char *str1, tree expr1, const char *str2,
      tree expr2, const char *str3)
{
  fprintf (f, "%s", str1);
  print_generic_expr (f, expr1, TDF_SLIM);
  fprintf (f, "%s", str2);
  print_generic_expr (f, expr2, TDF_SLIM);
  fprintf (f, "%s", str3);
}
