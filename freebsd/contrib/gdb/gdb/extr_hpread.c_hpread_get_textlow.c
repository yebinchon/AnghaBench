
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_6__ {unsigned long lowaddr; scalar_t__ name; } ;
struct TYPE_5__ {scalar_t__ name; } ;
struct TYPE_4__ {scalar_t__ kind; } ;
union dnttentry {TYPE_3__ dfunc; TYPE_2__ ddocfunc; TYPE_1__ dblock; } ;
struct objfile {int dummy; } ;
struct minimal_symbol {int dummy; } ;


 scalar_t__ DNTT_TYPE_DOC_FUNCTION ;
 scalar_t__ DNTT_TYPE_END ;
 scalar_t__ DNTT_TYPE_FUNCTION ;
 unsigned long SYMBOL_VALUE_ADDRESS (struct minimal_symbol*) ;
 scalar_t__ VT (struct objfile*) ;
 int gdb_assert (int ) ;
 union dnttentry* hpread_get_gntt (int ,struct objfile*) ;
 union dnttentry* hpread_get_lntt (int ,struct objfile*) ;
 struct minimal_symbol* lookup_minimal_symbol (scalar_t__,int *,struct objfile*) ;

__attribute__((used)) static unsigned long
hpread_get_textlow (int global, int index, struct objfile *objfile,
      int symcount)
{
  union dnttentry *dn_bufp = ((void*)0);
  struct minimal_symbol *msymbol;


  if (index < symcount)
    {
      do
 {
   if (global)
     dn_bufp = hpread_get_gntt (index++, objfile);
   else
     dn_bufp = hpread_get_lntt (index++, objfile);
 }
      while (dn_bufp->dblock.kind != DNTT_TYPE_FUNCTION
      && dn_bufp->dblock.kind != DNTT_TYPE_DOC_FUNCTION
      && dn_bufp->dblock.kind != DNTT_TYPE_END
      && index < symcount);
    }




  gdb_assert (dn_bufp != ((void*)0));



  if (dn_bufp->dblock.kind == DNTT_TYPE_END)
    return 0;


  if (index == symcount)
    return 0;


  if (dn_bufp->dblock.kind == DNTT_TYPE_FUNCTION)
    msymbol = lookup_minimal_symbol (dn_bufp->dfunc.name + VT (objfile), ((void*)0),
         objfile);
  else
    msymbol = lookup_minimal_symbol (dn_bufp->ddocfunc.name + VT (objfile), ((void*)0),
         objfile);

  if (msymbol)
    return SYMBOL_VALUE_ADDRESS (msymbol);
  else
    return dn_bufp->dfunc.lowaddr;
}
