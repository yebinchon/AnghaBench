
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct deferred_opt {scalar_t__ code; char* arg; } ;
struct TYPE_2__ {int warn_dollars; scalar_t__ directives_only; int c99; scalar_t__ pedantic; int preprocessed; } ;


 int LC_RENAME ;
 scalar_t__ OPT_A ;
 scalar_t__ OPT_D ;
 scalar_t__ OPT_U ;
 scalar_t__ OPT_imacros ;
 int _ (char*) ;
 int c_cpp_builtins (int ) ;
 int cb_file_change (int ,int ) ;
 int cpp_assert (int ,char*) ;
 int cpp_define (int ,char*) ;
 int cpp_init_builtins (int ,int ) ;
 int cpp_init_special_builtins (int ) ;
 TYPE_1__* cpp_opts ;
 scalar_t__ cpp_push_include (int ,char*) ;
 int cpp_scan_nooutput (int ) ;
 int cpp_unassert (int ,char*) ;
 int cpp_undef (int ,char*) ;
 size_t deferred_count ;
 struct deferred_opt* deferred_opts ;
 int flag_hosted ;
 size_t include_cursor ;
 int line_table ;
 int linemap_add (int *,int ,int ,int ,int ) ;
 int parse_in ;
 int push_command_line_include () ;

__attribute__((used)) static void
finish_options (void)
{
  if (!cpp_opts->preprocessed)
    {
      size_t i;

      cb_file_change (parse_in,
        linemap_add (&line_table, LC_RENAME, 0,
       _("<built-in>"), 0));

      cpp_init_builtins (parse_in, flag_hosted);
      c_cpp_builtins (parse_in);
      cpp_opts->warn_dollars = (cpp_opts->pedantic && !cpp_opts->c99);

      cb_file_change (parse_in,
        linemap_add (&line_table, LC_RENAME, 0,
       _("<command-line>"), 0));

      for (i = 0; i < deferred_count; i++)
 {
   struct deferred_opt *opt = &deferred_opts[i];

   if (opt->code == OPT_D)
     cpp_define (parse_in, opt->arg);
   else if (opt->code == OPT_U)
     cpp_undef (parse_in, opt->arg);
   else if (opt->code == OPT_A)
     {
       if (opt->arg[0] == '-')
  cpp_unassert (parse_in, opt->arg + 1);
       else
  cpp_assert (parse_in, opt->arg);
     }
 }


      for (i = 0; i < deferred_count; i++)
 {
   struct deferred_opt *opt = &deferred_opts[i];

   if (opt->code == OPT_imacros
       && cpp_push_include (parse_in, opt->arg))
     {

       include_cursor = deferred_count + 1;
       cpp_scan_nooutput (parse_in);
     }
 }
    }
  else if (cpp_opts->directives_only)
    cpp_init_special_builtins (parse_in);

  include_cursor = 0;
  push_command_line_include ();
}
