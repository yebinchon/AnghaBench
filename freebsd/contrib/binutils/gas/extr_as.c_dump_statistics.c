
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char*) ;
 int environ ;
 int fprintf (int ,char*,char*,long,...) ;
 long get_run_time () ;
 char* myname ;
 int obj_print_statistics (int ) ;
 int read_print_statistics (int ) ;
 scalar_t__ sbrk (int ) ;
 long start_time ;
 int stderr ;
 int subsegs_print_statistics (int ) ;
 int symbol_print_statistics (int ) ;
 int tc_print_statistics (int ) ;
 int write_print_statistics (int ) ;

__attribute__((used)) static void
dump_statistics (void)
{



  long run_time = get_run_time () - start_time;

  fprintf (stderr, _("%s: total time in assembly: %ld.%06ld\n"),
    myname, run_time / 1000000, run_time % 1000000);





  subsegs_print_statistics (stderr);
  write_print_statistics (stderr);
  symbol_print_statistics (stderr);
  read_print_statistics (stderr);
}
