
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int match_bits; } ;


 unsigned long SBM (int ) ;
 TYPE_1__* instruction ;

__attribute__((used)) static unsigned long
build_mask (void)
{
  unsigned long mask = SBM (instruction->match_bits);
  return mask;
}
