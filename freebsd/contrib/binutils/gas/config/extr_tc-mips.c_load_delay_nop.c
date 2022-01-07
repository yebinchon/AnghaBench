
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gpr_interlocks ;
 int macro_build (int *,char*,char*) ;

__attribute__((used)) static inline void
load_delay_nop (void)
{
  if (!gpr_interlocks)
    macro_build (((void*)0), "nop", "");
}
