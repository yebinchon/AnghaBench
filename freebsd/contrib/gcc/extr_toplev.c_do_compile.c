
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TV_TOTAL ;
 int backend_init () ;
 int compile_file () ;
 int errorcount ;
 int finalize () ;
 scalar_t__ flag_detailed_statistics ;
 int init_adjust_machine_modes () ;
 scalar_t__ lang_dependent_init (int ) ;
 int main_input_filename ;
 int no_backend ;
 int process_options () ;
 int quiet_flag ;
 int stderr ;
 scalar_t__ time_report ;
 int timevar_init () ;
 int timevar_print (int ) ;
 int timevar_start (int ) ;
 int timevar_stop (int ) ;

__attribute__((used)) static void
do_compile (void)
{


  if (time_report || !quiet_flag || flag_detailed_statistics)
    timevar_init ();
  timevar_start (TV_TOTAL);

  process_options ();


  if (!errorcount)
    {



      init_adjust_machine_modes ();


      if (!no_backend)
 backend_init ();


      if (lang_dependent_init (main_input_filename))
 compile_file ();

      finalize ();
    }


  timevar_stop (TV_TOTAL);
  timevar_print (stderr);
}
