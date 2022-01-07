
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int FILE ;


 scalar_t__ VALUE_HANDLE_EXPR_SET (int ) ;
 int VALUE_HANDLE_ID (int ) ;
 int print_value_set (int *,scalar_t__,char*,int ) ;
 int sprintf (char*,char*,int) ;

void
print_value_expressions (FILE *outfile, tree val)
{
  if (VALUE_HANDLE_EXPR_SET (val))
    {
      char s[10];
      sprintf (s, "VH.%04d", VALUE_HANDLE_ID (val));
      print_value_set (outfile, VALUE_HANDLE_EXPR_SET (val), s, 0);
    }
}
