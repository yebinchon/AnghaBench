
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ deprecated_entry_file_lowpc; scalar_t__ deprecated_entry_file_highpc; } ;
struct TYPE_4__ {TYPE_1__ ei; } ;
typedef scalar_t__ CORE_ADDR ;


 scalar_t__ AT_ENTRY_POINT ;
 scalar_t__ AT_SYMBOL ;
 scalar_t__ CALL_DUMMY_LOCATION ;
 scalar_t__ DEPRECATED_PC_IN_CALL_DUMMY (scalar_t__,int ,int ) ;
 TYPE_2__* symfile_objfile ;

int
deprecated_inside_entry_file (CORE_ADDR addr)
{
  if (addr == 0)
    return 1;
  if (symfile_objfile == 0)
    return 0;
  if (CALL_DUMMY_LOCATION == AT_ENTRY_POINT
      || CALL_DUMMY_LOCATION == AT_SYMBOL)
    {



      if (DEPRECATED_PC_IN_CALL_DUMMY (addr, 0, 0))
 return 0;
    }
  return (addr >= symfile_objfile->ei.deprecated_entry_file_lowpc &&
   addr < symfile_objfile->ei.deprecated_entry_file_highpc);
}
