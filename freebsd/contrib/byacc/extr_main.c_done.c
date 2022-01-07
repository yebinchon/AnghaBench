
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DO_CLOSE (int ) ;
 int DO_FREE (int ) ;
 int EXIT_FAILURE ;
 int _exit (int ) ;
 int action_file ;
 int code_file ;
 int code_file_name ;
 int defines_file ;
 int defines_file_name ;
 scalar_t__ dflag ;
 int exit (int) ;
 int externs_file ;
 int externs_file_name ;
 scalar_t__ gflag ;
 scalar_t__ got_intr ;
 int graph_file ;
 int graph_file_name ;
 scalar_t__ iflag ;
 int input_file ;
 int lalr_leaks () ;
 int lr0_leaks () ;
 int mkpar_leaks () ;
 int mstring_leaks () ;
 scalar_t__ oflag ;
 int output_file ;
 int output_file_name ;
 int output_leaks () ;
 int reader_leaks () ;
 scalar_t__ rflag ;
 int text_file ;
 int union_file ;
 int verbose_file ;
 int verbose_file_name ;
 scalar_t__ vflag ;

void
done(int k)
{
    DO_CLOSE(input_file);
    DO_CLOSE(output_file);
    if (iflag)
 DO_CLOSE(externs_file);
    if (rflag)
 DO_CLOSE(code_file);

    DO_CLOSE(action_file);
    DO_CLOSE(defines_file);
    DO_CLOSE(graph_file);
    DO_CLOSE(text_file);
    DO_CLOSE(union_file);
    DO_CLOSE(verbose_file);

    if (got_intr)
 _exit(EXIT_FAILURE);
    exit(k);
}
