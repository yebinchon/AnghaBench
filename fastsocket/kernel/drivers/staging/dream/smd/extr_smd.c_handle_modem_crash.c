
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int msm_hw_reset_hook () ;
 int pr_err (char*) ;
 int smd_diag () ;

__attribute__((used)) static void handle_modem_crash(void)
{
 pr_err("ARM9 has CRASHED\n");
 smd_diag();


 if (msm_hw_reset_hook)
  msm_hw_reset_hook();


 for (;;)
  ;
}
