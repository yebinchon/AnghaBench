
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TARGET_VIS ;
 int sparc_vis_init_builtins () ;

__attribute__((used)) static void
sparc_init_builtins (void)
{
  if (TARGET_VIS)
    sparc_vis_init_builtins ();
}
