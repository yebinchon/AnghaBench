
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {char* name; } ;
struct TYPE_3__ {int kind; } ;
union dnttentry {TYPE_2__ dsfile; TYPE_1__ dblock; } ;
struct objfile {int dummy; } ;


 int VT (struct objfile*) ;
 unsigned int VT_SIZE (struct objfile*) ;
 int complaint (int *,char*,int ) ;
 int hpread_has_name (int ) ;
 int symfile_complaints ;
 int symnum ;

__attribute__((used)) static void
set_namestring (union dnttentry *sym, char **namep, struct objfile *objfile)
{


  if (! hpread_has_name (sym->dblock.kind))
    *namep = "";
  else if ((unsigned) sym->dsfile.name >= VT_SIZE (objfile))
    {
      complaint (&symfile_complaints, "bad string table offset in symbol %d",
   symnum);
      *namep = "";
    }
  else
    *namep = sym->dsfile.name + VT (objfile);
}
