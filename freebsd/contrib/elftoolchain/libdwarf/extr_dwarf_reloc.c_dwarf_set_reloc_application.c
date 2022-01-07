
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int applyreloc; } ;


 TYPE_1__ _libdwarf ;

int
dwarf_set_reloc_application(int apply)
{
 int oldapply;

 oldapply = _libdwarf.applyreloc;
 _libdwarf.applyreloc = apply;

 return (oldapply);
}
