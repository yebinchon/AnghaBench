
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct type {int dummy; } ;
struct objfile {int dummy; } ;
struct TYPE_2__ {struct type* (* la_fund_type ) (struct objfile*,int) ;} ;


 int FT_NUM_MEMBERS ;
 TYPE_1__* cu_language_defn ;
 int error (char*,int) ;
 struct type** ftypes ;
 struct type* stub1 (struct objfile*,int) ;

__attribute__((used)) static struct type *
dwarf_fundamental_type (struct objfile *objfile, int typeid)
{
  if (typeid < 0 || typeid >= FT_NUM_MEMBERS)
    {
      error ("internal error - invalid fundamental type id %d", typeid);
    }





  if (ftypes[typeid] == ((void*)0))
    {
      ftypes[typeid] = cu_language_defn->la_fund_type (objfile, typeid);
    }

  return (ftypes[typeid]);
}
