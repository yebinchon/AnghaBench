
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct objfile {char* name; } ;
struct dwarf2_cu {struct type** ftypes; TYPE_1__* language_defn; } ;
struct TYPE_2__ {struct type* (* la_fund_type ) (struct objfile*,int) ;} ;


 int FT_NUM_MEMBERS ;
 int error (char*,int,char*) ;
 struct type* stub1 (struct objfile*,int) ;

__attribute__((used)) static struct type *
dwarf2_fundamental_type (struct objfile *objfile, int typeid,
    struct dwarf2_cu *cu)
{
  if (typeid < 0 || typeid >= FT_NUM_MEMBERS)
    {
      error ("Dwarf Error: internal error - invalid fundamental type id %d [in module %s]",
      typeid, objfile->name);
    }





  if (cu->ftypes[typeid] == ((void*)0))
    {
      cu->ftypes[typeid] = cu->language_defn->la_fund_type (objfile, typeid);
    }

  return (cu->ftypes[typeid]);
}
