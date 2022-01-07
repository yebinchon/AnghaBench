
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int dbg_frame_rule_table_size; } ;
typedef int Dwarf_Half ;
typedef TYPE_1__* Dwarf_Debug ;



Dwarf_Half
dwarf_set_frame_rule_table_size(Dwarf_Debug dbg, Dwarf_Half value)
{
 Dwarf_Half old_value;

 old_value = dbg->dbg_frame_rule_table_size;
 dbg->dbg_frame_rule_table_size = value;

 return (old_value);
}
