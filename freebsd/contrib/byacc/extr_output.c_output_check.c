
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int *) ;
 int * check ;
 int end_table () ;
 int high ;
 int output_int (int ) ;
 int output_newline () ;
 int start_int_table (char*,int ) ;

__attribute__((used)) static void
output_check(void)
{
    int i;
    int j;

    start_int_table("check", check[0]);

    j = 10;
    for (i = 1; i <= high; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     ++j;

 output_int(check[i]);
    }

    end_table();
    FREE(check);
}
