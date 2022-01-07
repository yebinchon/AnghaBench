
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int t_size; int t_flags; TYPE_2__* t_ardef; int t_type; int t_id; } ;
typedef TYPE_1__ tdesc_t ;
typedef int dwarf_t ;
struct TYPE_6__ {int ad_nelems; TYPE_1__* ad_contents; int ad_idxtype; } ;
typedef TYPE_2__ ardef_t ;
typedef void* Dwarf_Unsigned ;
typedef void* Dwarf_Signed ;
typedef int * Dwarf_Die ;


 int ARRAY ;
 int DW_AT_count ;
 int DW_AT_upper_bound ;
 scalar_t__ DW_TAG_subrange_type ;
 int TDESC_F_RESOLVED ;
 int debug (int,char*,int ,int ) ;
 int die_off (int *,int *) ;
 int * die_sibling (int *,int *) ;
 scalar_t__ die_signed (int *,int *,int ,void**,int ) ;
 scalar_t__ die_tag (int *,int *) ;
 scalar_t__ die_unsigned (int *,int *,int ,void**,int ) ;
 int mfgtid_next (int *) ;
 int tdesc_intr_long (int *) ;
 int terminate (char*,int ) ;
 void* xcalloc (int) ;

__attribute__((used)) static void
tdesc_array_create(dwarf_t *dw, Dwarf_Die dim, tdesc_t *arrtdp,
    tdesc_t *dimtdp)
{
 Dwarf_Unsigned uval;
 Dwarf_Signed sval;
 tdesc_t *ctdp = ((void*)0);
 Dwarf_Die dim2;
 ardef_t *ar;

 if ((dim2 = die_sibling(dw, dim)) == ((void*)0)) {
  ctdp = arrtdp;
 } else if (die_tag(dw, dim2) == DW_TAG_subrange_type) {
  ctdp = xcalloc(sizeof (tdesc_t));
  ctdp->t_id = mfgtid_next(dw);
  debug(3, "die %llu: creating new type %u for sub-dimension\n",
      die_off(dw, dim2), ctdp->t_id);
  tdesc_array_create(dw, dim2, arrtdp, ctdp);
 } else {
  terminate("die %llu: unexpected non-subrange node in array\n",
      die_off(dw, dim2));
 }

 dimtdp->t_type = ARRAY;
 dimtdp->t_ardef = ar = xcalloc(sizeof (ardef_t));
 if (die_unsigned(dw, dim, DW_AT_upper_bound, &uval, 0))
  ar->ad_nelems = uval + 1;
 else if (die_signed(dw, dim, DW_AT_upper_bound, &sval, 0))
  ar->ad_nelems = sval + 1;
 else if (die_unsigned(dw, dim, DW_AT_count, &uval, 0))
  ar->ad_nelems = uval;
 else if (die_signed(dw, dim, DW_AT_count, &sval, 0))
  ar->ad_nelems = sval;
 else
  ar->ad_nelems = 0;





 ar->ad_idxtype = tdesc_intr_long(dw);
 ar->ad_contents = ctdp;

 if (ar->ad_contents->t_size != 0) {
  dimtdp->t_size = ar->ad_contents->t_size * ar->ad_nelems;
  dimtdp->t_flags |= TDESC_F_RESOLVED;
 }
}
