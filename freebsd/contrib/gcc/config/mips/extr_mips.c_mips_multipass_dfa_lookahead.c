
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TUNE_SB1 ;

__attribute__((used)) static int
mips_multipass_dfa_lookahead (void)
{

  if (TUNE_SB1)
    return 4;

  return 0;
}
