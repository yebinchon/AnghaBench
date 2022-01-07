
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct deferred_opt {scalar_t__ code; int arg; } ;
struct TYPE_4__ {int print_include_names; int preprocessed; int warn_unused_macros; } ;
struct TYPE_3__ {int trace_includes; } ;


 int LC_RENAME ;
 scalar_t__ OPT_include ;
 int cpp_change_file (int ,int ,int ) ;
 TYPE_2__* cpp_opts ;
 scalar_t__ cpp_push_include (int ,int ) ;
 scalar_t__ deferred_count ;
 struct deferred_opt* deferred_opts ;
 scalar_t__ include_cursor ;
 TYPE_1__ line_table ;
 int parse_in ;
 int this_input_filename ;
 int warn_unused_macros ;

__attribute__((used)) static void
push_command_line_include (void)
{
  while (include_cursor < deferred_count)
    {
      struct deferred_opt *opt = &deferred_opts[include_cursor++];

      if (!cpp_opts->preprocessed && opt->code == OPT_include
   && cpp_push_include (parse_in, opt->arg))
 return;
    }

  if (include_cursor == deferred_count)
    {
      include_cursor++;

      cpp_opts->warn_unused_macros = warn_unused_macros;

      if (!cpp_opts->preprocessed)
 cpp_change_file (parse_in, LC_RENAME, this_input_filename);



      line_table.trace_includes = cpp_opts->print_include_names;
    }
}
