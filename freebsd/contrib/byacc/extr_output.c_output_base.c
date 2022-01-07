
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int *) ;
 int PER_STATE ;
 int * base ;
 int end_table () ;
 int nstates ;
 int nvectors ;
 int output_int (int ) ;
 int output_line (char*) ;
 int output_newline () ;
 int start_int_table (char*,int ) ;

__attribute__((used)) static void
output_base(void)
{
    int i, j;

    start_int_table("sindex", base[0]);

    j = 10;
    for (i = 1; i < nstates; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     ++j;

 output_int(base[i]);
    }

    end_table();

    start_int_table("rindex", base[nstates]);

    j = 10;
    for (i = nstates + 1; i < 2 * nstates; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     ++j;

 output_int(base[i]);
    }

    end_table();
    start_int_table("gindex", base[PER_STATE * nstates]);

    j = 10;
    for (i = PER_STATE * nstates + 1; i < nvectors - 1; i++)
    {
 if (j >= 10)
 {
     output_newline();
     j = 1;
 }
 else
     ++j;

 output_int(base[i]);
    }

    end_table();
    FREE(base);
}
