
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
struct type {int dummy; } ;
struct coff_symbol {scalar_t__ c_naux; scalar_t__ c_sclass; int c_name; } ;


 int BTYPE (unsigned int) ;
 scalar_t__ C_ENTAG ;
 scalar_t__ C_STRTAG ;
 scalar_t__ C_UNTAG ;
 unsigned int DECREF (unsigned int) ;
 int DIMNUM ;
 int FT_INTEGER ;
 scalar_t__ ISARY (unsigned int) ;
 scalar_t__ ISFCN (unsigned int) ;
 scalar_t__ ISPTR (unsigned int) ;
 unsigned int N_BTMASK ;
 struct type* coff_alloc_type (scalar_t__) ;
 int complaint (int *,char*,int ) ;
 struct type* create_array_type (struct type*,struct type*,struct type*) ;
 struct type* create_range_type (struct type*,struct type*,int ,int) ;
 int current_objfile ;
 struct type* decode_base_type (struct coff_symbol*,int ,union internal_auxent*) ;
 struct type* lookup_function_type (struct type*) ;
 struct type* lookup_fundamental_type (int ,int ) ;
 struct type* lookup_pointer_type (struct type*) ;
 int symfile_complaints ;

__attribute__((used)) static struct type *
decode_type (struct coff_symbol *cs, unsigned int c_type,
      union internal_auxent *aux)
{
  struct type *type = 0;
  unsigned int new_c_type;

  if (c_type & ~N_BTMASK)
    {
      new_c_type = DECREF (c_type);
      if (ISPTR (c_type))
 {
   type = decode_type (cs, new_c_type, aux);
   type = lookup_pointer_type (type);
 }
      else if (ISFCN (c_type))
 {
   type = decode_type (cs, new_c_type, aux);
   type = lookup_function_type (type);
 }
      else if (ISARY (c_type))
 {
   int i, n;
   unsigned short *dim;
   struct type *base_type, *index_type, *range_type;



   if (aux->x_sym.x_tagndx.l == 0)
     cs->c_naux = 0;


   dim = &aux->x_sym.x_fcnary.x_ary.x_dimen[0];
   i = 1;
   n = dim[0];
   for (i = 0; *dim && i < DIMNUM - 1; i++, dim++)
     *dim = *(dim + 1);
   *dim = 0;

   base_type = decode_type (cs, new_c_type, aux);
   index_type = lookup_fundamental_type (current_objfile, FT_INTEGER);
   range_type =
     create_range_type ((struct type *) ((void*)0), index_type, 0, n - 1);
   type =
     create_array_type ((struct type *) ((void*)0), base_type, range_type);
 }
      return type;
    }
  if (cs->c_naux > 0 && aux->x_sym.x_tagndx.l != 0)
    {
      if (cs->c_sclass != C_STRTAG
   && cs->c_sclass != C_UNTAG
   && cs->c_sclass != C_ENTAG
   && aux->x_sym.x_tagndx.l >= 0)
 {
   type = coff_alloc_type (aux->x_sym.x_tagndx.l);
   return type;
 }
      else
 {
   complaint (&symfile_complaints,
       "Symbol table entry for %s has bad tagndx value",
       cs->c_name);

 }
    }

  return decode_base_type (cs, BTYPE (c_type), aux);
}
