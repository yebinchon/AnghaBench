
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TARGET_REALLY_IWMMXT ;
 int arm_init_iwmmxt_builtins () ;
 int arm_init_tls_builtins () ;

__attribute__((used)) static void
arm_init_builtins (void)
{
  arm_init_tls_builtins ();

  if (TARGET_REALLY_IWMMXT)
    arm_init_iwmmxt_builtins ();
}
