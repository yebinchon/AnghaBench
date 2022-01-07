
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct dwarf2_cu {TYPE_1__* objfile; } ;
struct die_info {struct type* type; int tag; } ;
struct TYPE_2__ {char* name; } ;


 int dump_die (struct die_info*) ;
 int error (char*,int ,char*) ;
 int read_type_die (struct die_info*,struct dwarf2_cu*) ;

__attribute__((used)) static struct type *
tag_type_to_type (struct die_info *die, struct dwarf2_cu *cu)
{
  if (die->type)
    {
      return die->type;
    }
  else
    {
      read_type_die (die, cu);
      if (!die->type)
 {
   dump_die (die);
   error ("Dwarf Error: Cannot find type of die 0x%x [in module %s]",
     die->tag, cu->objfile->name);
 }
      return die->type;
    }
}
