
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int loc_directive_seen; } ;


 TYPE_1__ CURR_SLOT ;
 int dwarf2_directive_loc (int) ;

__attribute__((used)) static void
dot_loc (int x)
{
  CURR_SLOT.loc_directive_seen = 1;
  dwarf2_directive_loc (x);
}
