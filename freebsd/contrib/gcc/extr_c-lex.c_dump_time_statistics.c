
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct c_fileinfo {int time; } ;


 int body_time ;
 int dump_one_header ;
 int file_info_tree ;
 int fprintf (int ,char*,...) ;
 struct c_fileinfo* get_fileinfo (int ) ;
 int get_run_time () ;
 int header_time ;
 int input_filename ;
 int print_time (char*,int) ;
 int splay_tree_foreach (int ,int ,int ) ;
 int stderr ;

void
dump_time_statistics (void)
{
  struct c_fileinfo *file = get_fileinfo (input_filename);
  int this_time = get_run_time ();
  file->time += this_time - body_time;

  fprintf (stderr, "\n******\n");
  print_time ("header files (total)", header_time);
  print_time ("main file (total)", this_time - body_time);
  fprintf (stderr, "ratio = %g : 1\n",
    (double) header_time / (double) (this_time - body_time));
  fprintf (stderr, "\n******\n");

  splay_tree_foreach (file_info_tree, dump_one_header, 0);
}
