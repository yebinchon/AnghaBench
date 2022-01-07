
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CLEANUP_EXPENSIVE ;
 int CLEANUP_LOG_LINKS ;
 int CLEANUP_THREADING ;
 int CLEANUP_UPDATE_LIFE ;
 int DECL_INITIAL (int ) ;
 int PROP_DEATH_NOTES ;
 int PROP_FINAL ;
 int PROP_LOG_LINKS ;
 int PROP_REG_INFO ;
 int UPDATE_LIFE_GLOBAL_RM_NOTES ;
 int allocate_reg_life_data () ;
 int cleanup_cfg (int) ;
 int current_function_decl ;
 scalar_t__ extra_warnings ;
 scalar_t__ flag_thread_jumps ;
 scalar_t__ initialize_uninitialized_subregs () ;
 int life_analysis (int ) ;
 int no_new_pseudos ;
 scalar_t__ optimize ;
 int regclass_init () ;
 int setjmp_args_warning () ;
 int setjmp_vars_warning (int ) ;
 int update_life_info (int *,int ,int) ;

__attribute__((used)) static unsigned int
rest_of_handle_life (void)
{
  regclass_init ();

  life_analysis (PROP_FINAL);
  if (optimize)
    cleanup_cfg (CLEANUP_EXPENSIVE | CLEANUP_UPDATE_LIFE | CLEANUP_LOG_LINKS
                 | (flag_thread_jumps ? CLEANUP_THREADING : 0));

  if (extra_warnings)
    {
      setjmp_vars_warning (DECL_INITIAL (current_function_decl));
      setjmp_args_warning ();
    }

  if (optimize)
    {
      if (initialize_uninitialized_subregs ())
        {


          allocate_reg_life_data ();
          update_life_info (((void*)0), UPDATE_LIFE_GLOBAL_RM_NOTES,
                            PROP_LOG_LINKS | PROP_REG_INFO | PROP_DEATH_NOTES);
        }
    }

  no_new_pseudos = 1;
  return 0;
}
