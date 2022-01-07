
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int end_table () ;
 int nrules ;
 int output_YYINT_typedef (int ) ;
 int output_file ;
 int output_int (int) ;
 int output_newline () ;
 size_t* rlhs ;
 int* rrhs ;
 int start_int_table (char*,int) ;
 size_t start_symbol ;
 int* symbol_value ;

__attribute__((used)) static void
output_rule_data(void)
{
    int i;
    int j;

    output_YYINT_typedef(output_file);

    start_int_table("lhs", symbol_value[start_symbol]);

    j = 10;
    for (i = 3; i < nrules; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     ++j;

 output_int(symbol_value[rlhs[i]]);
    }
    end_table();

    start_int_table("len", 2);

    j = 10;
    for (i = 3; i < nrules; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     j++;

 output_int(rrhs[i + 1] - rrhs[i] - 1);
    }
    end_table();
}
