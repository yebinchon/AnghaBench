
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dwarf2_fde {int next; } ;
struct comp_unit {int objfile; } ;


 int dwarf2_frame_objfile_data ;
 int objfile_data (int ,int ) ;
 int set_objfile_data (int ,int ,struct dwarf2_fde*) ;

__attribute__((used)) static void
add_fde (struct comp_unit *unit, struct dwarf2_fde *fde)
{
  fde->next = objfile_data (unit->objfile, dwarf2_frame_objfile_data);
  set_objfile_data (unit->objfile, dwarf2_frame_objfile_data, fde);
}
