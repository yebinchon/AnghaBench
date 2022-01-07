
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMSG_QUIESCE ;
 int PMSG_RECOVER ;
 int dpm_resume_end (int ) ;
 int dpm_suspend_start (int ) ;
 int pm_prepare_console () ;
 int pm_restore_console () ;
 int pm_restore_gfp_mask () ;
 int pm_restrict_gfp_mask () ;
 int resume_console () ;
 int resume_target_kernel (int) ;
 int suspend_console () ;

int hibernation_restore(int platform_mode)
{
 int error;

 pm_prepare_console();
 suspend_console();
 pm_restrict_gfp_mask();
 error = dpm_suspend_start(PMSG_QUIESCE);
 if (!error) {
  error = resume_target_kernel(platform_mode);
  dpm_resume_end(PMSG_RECOVER);
 }
 pm_restore_gfp_mask();
 resume_console();
 pm_restore_console();
 return error;
}
