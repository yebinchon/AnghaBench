
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ style; } ;
struct TYPE_4__ {int unsigned_char; int warn_long_long; int warn_variadic_macros; scalar_t__ traditional; scalar_t__ directives_only; int stdc_0_in_system_headers; int preprocessed; TYPE_1__ deps; } ;


 scalar_t__ DEPS_NONE ;
 scalar_t__ DINFO_LEVEL_NONE ;
 int STDC_0_IN_SYSTEM_HEADERS ;
 TYPE_2__* cpp_opts ;
 scalar_t__ debug_info_level ;
 scalar_t__ deps_seen ;
 int error (char*) ;
 scalar_t__ flag_dump_includes ;
 char flag_dump_macros ;
 int flag_isoc99 ;
 int flag_no_line_commands ;
 int flag_no_output ;
 int flag_signed_char ;
 int flag_working_directory ;
 scalar_t__ pedantic ;
 scalar_t__ warn_long_long ;
 scalar_t__ warn_traditional ;
 scalar_t__ warn_unused_macros ;
 scalar_t__ warn_variadic_macros ;

__attribute__((used)) static void
sanitize_cpp_opts (void)
{


  if (deps_seen && cpp_opts->deps.style == DEPS_NONE)
    error ("to generate dependencies you must specify either -M or -MM");



  if (flag_dump_macros == 'M')
    flag_no_output = 1;



  if (cpp_opts->directives_only && !cpp_opts->preprocessed && !flag_dump_macros)
    flag_dump_macros = 'D';




  if (flag_no_output)
    {
      if (flag_dump_macros != 'M')
 flag_dump_macros = 0;
      flag_dump_includes = 0;
      flag_no_line_commands = 1;
    }

  cpp_opts->unsigned_char = !flag_signed_char;
  cpp_opts->stdc_0_in_system_headers = STDC_0_IN_SYSTEM_HEADERS;



  cpp_opts->warn_long_long
    = warn_long_long && ((!flag_isoc99 && pedantic) || warn_traditional);



  cpp_opts->warn_variadic_macros
    = warn_variadic_macros && (pedantic || warn_traditional);





  if (flag_working_directory == -1)
    flag_working_directory = (debug_info_level != DINFO_LEVEL_NONE);

  if (cpp_opts->directives_only)
    {
      if (warn_unused_macros)
 error ("-fdirectives-only is incompatible with -Wunused_macros");
      if (cpp_opts->traditional)
 error ("-fdirectives-only is incompatible with -traditional");
    }
}
