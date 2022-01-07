
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int relocatable; } ;


 int _bfd_fix_excluded_sec_syms (int ,TYPE_1__*) ;
 TYPE_1__ link_info ;
 int output_bfd ;

void
finish_default (void)
{
  if (!link_info.relocatable)
    _bfd_fix_excluded_sec_syms (output_bfd, &link_info);
}
