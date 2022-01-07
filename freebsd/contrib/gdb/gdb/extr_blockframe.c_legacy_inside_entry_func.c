
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ entry_func_lowpc; scalar_t__ entry_func_highpc; } ;
struct TYPE_4__ {TYPE_1__ ei; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ AT_ENTRY_POINT ;
 scalar_t__ CALL_DUMMY_LOCATION ;
 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (scalar_t__,int ,int ) ;
 TYPE_2__* symfile_objfile ;

__attribute__((used)) static int
legacy_inside_entry_func (CORE_ADDR pc)
{
  if (symfile_objfile == 0)
    return 0;

  if (CALL_DUMMY_LOCATION == AT_ENTRY_POINT)
    {




      if (DEPRECATED_PC_IN_CALL_DUMMY (pc, 0, 0))
 return 0;
    }

  return (symfile_objfile->ei.entry_func_lowpc <= pc
   && symfile_objfile->ei.entry_func_highpc > pc);
}
