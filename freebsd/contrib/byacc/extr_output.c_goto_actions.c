
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int ) ;
 int NEW2 (int ,int ) ;
 int Value_t ;
 int default_goto (int) ;
 int end_table () ;
 int nstates ;
 int nsyms ;
 int output_int (int) ;
 int output_newline () ;
 int save_column (int,int) ;
 int start_int_table (char*,int) ;
 int start_symbol ;
 int state_count ;

__attribute__((used)) static void
goto_actions(void)
{
    int i, j, k;

    state_count = NEW2(nstates, Value_t);

    k = default_goto(start_symbol + 1);
    start_int_table("dgoto", k);
    save_column(start_symbol + 1, k);

    j = 10;
    for (i = start_symbol + 2; i < nsyms; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     ++j;

 k = default_goto(i);
 output_int(k);
 save_column(i, k);
    }

    end_table();
    FREE(state_count);
}
