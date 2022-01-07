
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {unsigned int n_bits; } ;


 unsigned int SSA_NAME_VERSION (int ) ;
 scalar_t__ TEST_BIT (int ,unsigned int) ;
 TYPE_1__* new_ssa_names ;
 int old_ssa_names ;

__attribute__((used)) static inline bool
is_old_name (tree name)
{
  unsigned ver = SSA_NAME_VERSION (name);
  return ver < new_ssa_names->n_bits && TEST_BIT (old_ssa_names, ver);
}
