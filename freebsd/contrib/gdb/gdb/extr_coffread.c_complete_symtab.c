
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ entry_point; scalar_t__ deprecated_entry_file_highpc; scalar_t__ deprecated_entry_file_lowpc; } ;
struct TYPE_4__ {TYPE_1__ ei; } ;
typedef scalar_t__ CORE_ADDR ;


 TYPE_2__* current_objfile ;
 scalar_t__ current_source_end_addr ;
 scalar_t__ current_source_start_addr ;
 int * last_source_file ;
 int * savestring (char*,int ) ;
 int strlen (char*) ;
 int xfree (int *) ;

__attribute__((used)) static void
complete_symtab (char *name, CORE_ADDR start_addr, unsigned int size)
{
  if (last_source_file != ((void*)0))
    xfree (last_source_file);
  last_source_file = savestring (name, strlen (name));
  current_source_start_addr = start_addr;
  current_source_end_addr = start_addr + size;

  if (current_objfile->ei.entry_point >= current_source_start_addr &&
      current_objfile->ei.entry_point < current_source_end_addr)
    {
      current_objfile->ei.deprecated_entry_file_lowpc = current_source_start_addr;
      current_objfile->ei.deprecated_entry_file_highpc = current_source_end_addr;
    }
}
