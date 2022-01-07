
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {void* main_func_highpc; void* main_func_lowpc; void* entry_func_highpc; void* entry_func_lowpc; void* deprecated_entry_file_highpc; void* deprecated_entry_file_lowpc; int entry_point; } ;
struct objfile {TYPE_1__ ei; int obfd; } ;


 int EXEC_P ;
 void* INVALID_ENTRY_HIGHPC ;
 void* INVALID_ENTRY_LOWPC ;
 int INVALID_ENTRY_POINT ;
 int bfd_get_file_flags (int ) ;
 int bfd_get_start_address (int ) ;

void
init_entry_point_info (struct objfile *objfile)
{



  if (bfd_get_file_flags (objfile->obfd) & EXEC_P)
    {


      objfile->ei.entry_point = bfd_get_start_address (objfile->obfd);
    }
  else
    {

      objfile->ei.entry_point = INVALID_ENTRY_POINT;
    }
  objfile->ei.deprecated_entry_file_lowpc = INVALID_ENTRY_LOWPC;
  objfile->ei.deprecated_entry_file_highpc = INVALID_ENTRY_HIGHPC;
  objfile->ei.entry_func_lowpc = INVALID_ENTRY_LOWPC;
  objfile->ei.entry_func_highpc = INVALID_ENTRY_HIGHPC;
  objfile->ei.main_func_lowpc = INVALID_ENTRY_LOWPC;
  objfile->ei.main_func_highpc = INVALID_ENTRY_HIGHPC;
}
