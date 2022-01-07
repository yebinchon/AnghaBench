
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ equiv; } ;
typedef TYPE_1__ value_range_t ;
typedef int tree ;
typedef int bitmap ;


 unsigned int SSA_NAME_VERSION (int ) ;
 int bitmap_ior_into (int ,scalar_t__) ;
 int bitmap_set_bit (int ,unsigned int) ;
 TYPE_1__** vr_value ;

__attribute__((used)) static void
add_equivalence (bitmap equiv, tree var)
{
  unsigned ver = SSA_NAME_VERSION (var);
  value_range_t *vr = vr_value[ver];

  bitmap_set_bit (equiv, ver);
  if (vr && vr->equiv)
    bitmap_ior_into (equiv, vr->equiv);
}
