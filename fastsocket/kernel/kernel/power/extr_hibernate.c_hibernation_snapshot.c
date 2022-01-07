
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int PMSG_FREEZE ;
 int PMSG_RECOVER ;
 int PMSG_RESTORE ;
 int PMSG_THAW ;
 int TEST_DEVICES ;
 int create_image (int) ;
 int dpm_resume_end (int ) ;
 int dpm_suspend_start (int ) ;
 int hibernate_preallocate_memory () ;
 scalar_t__ hibernation_test (int ) ;
 scalar_t__ in_suspend ;
 int platform_begin (int) ;
 int platform_end (int) ;
 int platform_recover (int) ;
 int pm_restore_gfp_mask () ;
 int pm_restrict_gfp_mask () ;
 int resume_console () ;
 int suspend_console () ;
 int swsusp_free () ;

int hibernation_snapshot(int platform_mode)
{
 int error;

 error = platform_begin(platform_mode);
 if (error)
  return error;


 error = hibernate_preallocate_memory();
 if (error)
  goto Close;

 suspend_console();
 pm_restrict_gfp_mask();
 error = dpm_suspend_start(PMSG_FREEZE);
 if (error)
  goto Recover_platform;

 if (hibernation_test(TEST_DEVICES))
  goto Recover_platform;

 error = create_image(platform_mode);





 Resume_devices:

 if (error || !in_suspend)
  swsusp_free();

 dpm_resume_end(in_suspend ?
  (error ? PMSG_RECOVER : PMSG_THAW) : PMSG_RESTORE);

 if (error || !in_suspend)
  pm_restore_gfp_mask();

 resume_console();
 Close:
 platform_end(platform_mode);
 return error;

 Recover_platform:
 platform_recover(platform_mode);
 goto Resume_devices;
}
