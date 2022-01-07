
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__* defred ;
 int end_table () ;
 int nstates ;
 int output_int (scalar_t__) ;
 int output_newline () ;
 int start_int_table (char*,scalar_t__) ;

__attribute__((used)) static void
output_yydefred(void)
{
    int i, j;

    start_int_table("defred", (defred[0] ? defred[0] - 2 : 0));

    j = 10;
    for (i = 1; i < nstates; i++)
    {
 if (j < 10)
     ++j;
 else
 {
     output_newline();
     j = 1;
 }

 output_int((defred[i] ? defred[i] - 2 : 0));
    }

    end_table();
}
