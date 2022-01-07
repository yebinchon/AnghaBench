
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int bt_machine; } ;
typedef TYPE_1__ Elftc_Bfd_Target ;



unsigned int
elftc_bfd_target_machine(Elftc_Bfd_Target *tgt)
{

 return (tgt->bt_machine);
}
