
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int entry_point; } ;
struct TYPE_4__ {TYPE_1__ ei; } ;
typedef int CORE_ADDR ;


 TYPE_2__* symfile_objfile ;

CORE_ADDR
entry_point_address (void)
{
  return symfile_objfile ? symfile_objfile->ei.entry_point : 0;
}
