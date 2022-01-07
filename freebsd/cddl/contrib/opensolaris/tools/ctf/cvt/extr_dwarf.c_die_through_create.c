
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


struct TYPE_13__ {int t_type; int t_name; int t_flags; int t_size; int t_tdesc; } ;
typedef TYPE_2__ tdesc_t ;
struct TYPE_14__ {TYPE_2__* ii_dtype; int ii_name; int ii_type; } ;
typedef TYPE_3__ iidesc_t ;
struct TYPE_15__ {TYPE_1__* dw_td; int dw_ptrsz; } ;
typedef TYPE_4__ dwarf_t ;
struct TYPE_12__ {int td_iihash; } ;
typedef int Dwarf_Off ;
typedef int Dwarf_Die ;
typedef int * Dwarf_Attribute ;


 int DW_AT_type ;
 int II_TYPE ;
 int POINTER ;
 int TDESC_F_RESOLVED ;
 int TYPEDEF ;
 int debug (int,char*,int ,int ,char const*,int) ;
 int * die_attr (TYPE_4__*,int ,int ,int ) ;
 int die_lookup_pass1 (TYPE_4__*,int ,int ) ;
 int iidesc_add (int ,TYPE_3__*) ;
 int tdesc_intr_void (TYPE_4__*) ;
 TYPE_3__* xcalloc (int) ;
 int xstrdup (int ) ;

__attribute__((used)) static void
die_through_create(dwarf_t *dw, Dwarf_Die die, Dwarf_Off off, tdesc_t *tdp,
    int type, const char *typename)
{
 Dwarf_Attribute attr;

 debug(3, "die %llu <%llx>: creating %s type %d\n", off, off, typename, type);

 tdp->t_type = type;

 if ((attr = die_attr(dw, die, DW_AT_type, 0)) != ((void*)0)) {
  tdp->t_tdesc = die_lookup_pass1(dw, die, DW_AT_type);
 } else {
  tdp->t_tdesc = tdesc_intr_void(dw);
 }

 if (type == POINTER)
  tdp->t_size = dw->dw_ptrsz;

 tdp->t_flags |= TDESC_F_RESOLVED;

 if (type == TYPEDEF) {
  iidesc_t *ii = xcalloc(sizeof (iidesc_t));
  ii->ii_type = II_TYPE;
  ii->ii_name = xstrdup(tdp->t_name);
  ii->ii_dtype = tdp;

  iidesc_add(dw->dw_td->td_iihash, ii);
 }
}
