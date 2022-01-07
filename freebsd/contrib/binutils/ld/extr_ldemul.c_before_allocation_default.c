
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int relocatable; } ;


 TYPE_1__ link_info ;
 int strip_excluded_output_sections () ;

void
before_allocation_default (void)
{
  if (!link_info.relocatable)
    strip_excluded_output_sections ();
}
