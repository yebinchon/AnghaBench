
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int (* end_source_file ) (int ) ;scalar_t__ start_end_main_source_file; int (* start_source_file ) (int ,int ) ;} ;


 int c_parse_file () ;
 int cpp_read_main_file (int ,int ) ;
 int cpp_undef_all (int ) ;
 TYPE_1__* debug_hooks ;
 int finish_file () ;
 int finish_options () ;
 int * in_fnames ;
 unsigned int num_in_fnames ;
 int parse_in ;
 int pch_init () ;
 int pop_file_scope () ;
 int push_file_scope () ;
 int stub1 (int ,int ) ;
 int stub2 (int ) ;
 int this_input_filename ;
 int warning (int ,char*) ;
 int yydebug ;

void
c_common_parse_file (int set_yydebug)
{
  unsigned int i;






  if (set_yydebug)
    warning (0, "YYDEBUG was not defined at build time, -dy ignored");


  i = 0;
  for (;;)
    {

      if (debug_hooks->start_end_main_source_file)
 (*debug_hooks->start_source_file) (0, this_input_filename);
      finish_options ();
      pch_init ();
      push_file_scope ();
      c_parse_file ();
      finish_file ();
      pop_file_scope ();

      if (debug_hooks->start_end_main_source_file)
 (*debug_hooks->end_source_file) (0);
      if (++i >= num_in_fnames)
 break;
      cpp_undef_all (parse_in);
      this_input_filename
 = cpp_read_main_file (parse_in, in_fnames[i]);


      if (!this_input_filename)
 break;
    }
}
