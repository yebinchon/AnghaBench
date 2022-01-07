
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int bt_type; } ;
typedef int Elftc_Bfd_Target_Flavor ;
typedef TYPE_1__ Elftc_Bfd_Target ;



Elftc_Bfd_Target_Flavor
elftc_bfd_target_flavor(Elftc_Bfd_Target *tgt)
{

 return (tgt->bt_type);
}
