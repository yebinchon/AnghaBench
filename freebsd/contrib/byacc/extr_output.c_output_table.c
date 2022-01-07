
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FREE (int *) ;
 int MAXYYINT ;
 int code_file ;
 int done (int) ;
 int end_table () ;
 int fprintf (int ,char*,int) ;
 int high ;
 int outline ;
 int output_int (int ) ;
 int output_newline () ;
 int start_int_table (char*,int ) ;
 int stderr ;
 int * table ;

__attribute__((used)) static void
output_table(void)
{
    int i;
    int j;

    if (high >= MAXYYINT)
    {
 fprintf(stderr, "YYTABLESIZE: %ld\n", high);
 fprintf(stderr, "Table is longer than %d elements.\n", MAXYYINT);
 done(1);
    }

    ++outline;
    fprintf(code_file, "#define YYTABLESIZE %ld\n", high);
    start_int_table("table", table[0]);

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

 output_int(table[i]);
    }

    end_table();
    FREE(table);
}
