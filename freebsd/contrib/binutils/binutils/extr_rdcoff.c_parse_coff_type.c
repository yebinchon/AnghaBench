
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {scalar_t__ l; } ;
struct TYPE_5__ {unsigned short* x_dimen; } ;
struct TYPE_6__ {TYPE_1__ x_ary; } ;
struct TYPE_8__ {TYPE_3__ x_tagndx; TYPE_2__ x_fcnary; } ;
union internal_auxent {TYPE_4__ x_sym; } ;
struct coff_types {int dummy; } ;
struct coff_symbols {int dummy; } ;
typedef scalar_t__ debug_type ;
typedef int bfd_boolean ;
typedef int bfd ;


 scalar_t__ DEBUG_TYPE_NULL ;
 int DECREF (int) ;
 int DIMNUM ;
 int FALSE ;
 scalar_t__ ISARY (int) ;
 scalar_t__ ISFCN (int) ;
 scalar_t__ ISPTR (int) ;
 int N_BTMASK ;
 int T_INT ;
 int _ (char*) ;
 scalar_t__* coff_get_slot (struct coff_types*,scalar_t__) ;
 scalar_t__ debug_make_array_type (void*,scalar_t__,scalar_t__,int ,int,int ) ;
 scalar_t__ debug_make_function_type (void*,scalar_t__,scalar_t__*,int ) ;
 scalar_t__ debug_make_indirect_type (void*,scalar_t__*,char const*) ;
 scalar_t__ debug_make_pointer_type (void*,scalar_t__) ;
 int non_fatal (int ,int) ;
 scalar_t__ parse_coff_base_type (int *,struct coff_symbols*,struct coff_types*,long,int,union internal_auxent*,void*) ;

__attribute__((used)) static debug_type
parse_coff_type (bfd *abfd, struct coff_symbols *symbols,
   struct coff_types *types, long coff_symno, int ntype,
   union internal_auxent *pauxent, bfd_boolean useaux,
   void *dhandle)
{
  debug_type type;

  if ((ntype & ~N_BTMASK) != 0)
    {
      int newtype;

      newtype = DECREF (ntype);

      if (ISPTR (ntype))
 {
   type = parse_coff_type (abfd, symbols, types, coff_symno, newtype,
      pauxent, useaux, dhandle);
   type = debug_make_pointer_type (dhandle, type);
 }
      else if (ISFCN (ntype))
 {
   type = parse_coff_type (abfd, symbols, types, coff_symno, newtype,
      pauxent, useaux, dhandle);
   type = debug_make_function_type (dhandle, type, (debug_type *) ((void*)0),
        FALSE);
 }
      else if (ISARY (ntype))
 {
   int n;

   if (pauxent == ((void*)0))
     n = 0;
   else
     {
       unsigned short *dim;
       int i;






       dim = pauxent->x_sym.x_fcnary.x_ary.x_dimen;
       n = dim[0];
       for (i = 0; *dim != 0 && i < DIMNUM - 1; i++, dim++)
  *dim = *(dim + 1);
       *dim = 0;
     }

   type = parse_coff_type (abfd, symbols, types, coff_symno, newtype,
      pauxent, FALSE, dhandle);
   type = debug_make_array_type (dhandle, type,
     parse_coff_base_type (abfd, symbols,
             types,
             coff_symno,
             T_INT,
             ((void*)0), dhandle),
     0, n - 1, FALSE);
 }
      else
 {
   non_fatal (_("parse_coff_type: Bad type code 0x%x"), ntype);
   return DEBUG_TYPE_NULL;
 }

      return type;
    }

  if (pauxent != ((void*)0) && pauxent->x_sym.x_tagndx.l > 0)
    {
      debug_type *slot;



      slot = coff_get_slot (types, pauxent->x_sym.x_tagndx.l);
      if (*slot != DEBUG_TYPE_NULL)
 return *slot;
      else
 return debug_make_indirect_type (dhandle, slot, (const char *) ((void*)0));
    }







  if (! useaux)
    pauxent = ((void*)0);

  return parse_coff_base_type (abfd, symbols, types, coff_symno, ntype,
          pauxent, dhandle);
}
