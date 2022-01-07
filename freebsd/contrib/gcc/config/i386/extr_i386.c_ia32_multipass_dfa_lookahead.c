
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ PROCESSOR_K6 ;
 scalar_t__ PROCESSOR_PENTIUM ;
 scalar_t__ PROCESSOR_PENTIUMPRO ;
 scalar_t__ ix86_tune ;

__attribute__((used)) static int
ia32_multipass_dfa_lookahead (void)
{
  if (ix86_tune == PROCESSOR_PENTIUM)
    return 2;

  if (ix86_tune == PROCESSOR_PENTIUMPRO
      || ix86_tune == PROCESSOR_K6)
    return 1;

  else
    return 0;
}
