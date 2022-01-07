
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TARGET_MMX ;
 int ix86_init_mmx_sse_builtins () ;

__attribute__((used)) static void
ix86_init_builtins (void)
{
  if (TARGET_MMX)
    ix86_init_mmx_sse_builtins ();
}
