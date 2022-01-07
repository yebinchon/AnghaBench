
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_27__ TYPE_5__ ;
typedef struct TYPE_26__ TYPE_4__ ;
typedef struct TYPE_25__ TYPE_3__ ;
typedef struct TYPE_24__ TYPE_2__ ;
typedef struct TYPE_23__ TYPE_1__ ;


typedef int u_longlong_t ;
struct TYPE_24__ {int t_type; int t_size; char* t_name; TYPE_3__* t_members; } ;
typedef TYPE_2__ tdesc_t ;
struct TYPE_25__ {int ml_offset; int ml_size; struct TYPE_25__* ml_next; int * ml_name; int ml_type; } ;
typedef TYPE_3__ mlist_t ;
struct TYPE_26__ {TYPE_2__* ii_dtype; int ii_name; int ii_type; } ;
typedef TYPE_4__ iidesc_t ;
struct TYPE_27__ {TYPE_1__* dw_td; int dw_fwdhash; } ;
typedef TYPE_5__ dwarf_t ;
struct TYPE_23__ {int td_iihash; } ;
typedef int Dwarf_Unsigned ;
typedef int Dwarf_Off ;
typedef scalar_t__ Dwarf_Half ;
typedef int * Dwarf_Die ;


 int DW_ATTR_REQ ;
 int DW_AT_bit_offset ;
 int DW_AT_bit_size ;
 int DW_AT_byte_size ;
 int DW_AT_data_member_location ;
 int DW_AT_type ;
 scalar_t__ DW_TAG_member ;
 int FORWARD ;
 int II_SOU ;
 int NBBY ;
 int debug (int,char*,int ,char const*,...) ;
 int * die_child (TYPE_5__*,int *) ;
 int die_create_one (TYPE_5__*,int *) ;
 int die_fwd_map ;
 scalar_t__ die_isdecl (TYPE_5__*,int *) ;
 int die_lookup_pass1 (TYPE_5__*,int *,int ) ;
 scalar_t__ die_mem_offset (TYPE_5__*,int *,int ,int*,int ) ;
 int * die_name (TYPE_5__*,int *) ;
 int die_off (TYPE_5__*,int *) ;
 int * die_sibling (TYPE_5__*,int *) ;
 scalar_t__ die_tag (TYPE_5__*,int *) ;
 scalar_t__ die_unsigned (TYPE_5__*,int *,int ,int*,int ) ;
 int free (char*) ;
 int hash_add (int ,TYPE_2__*) ;
 int hash_find_iter (int ,TYPE_2__*,int ,TYPE_2__*) ;
 int iidesc_add (int ,TYPE_4__*) ;
 int snprintf (char*,size_t,char*,char const*) ;
 int strlen (char const*) ;
 int tdesc_bitsize (int ) ;
 char const* tdesc_name (TYPE_2__*) ;
 void* xcalloc (int) ;
 char* xmalloc (size_t) ;
 int xstrdup (char*) ;

__attribute__((used)) static void
die_sou_create(dwarf_t *dw, Dwarf_Die str, Dwarf_Off off, tdesc_t *tdp,
    int type, const char *typename)
{
 Dwarf_Unsigned sz, bitsz, bitoff;

 Dwarf_Unsigned bysz;

 Dwarf_Die mem;
 mlist_t *ml, **mlastp;
 iidesc_t *ii;

 tdp->t_type = (die_isdecl(dw, str) ? FORWARD : type);

 debug(3, "die %llu: creating %s %s\n", off,
     (tdp->t_type == FORWARD ? "forward decl" : typename),
     tdesc_name(tdp));

 if (tdp->t_type == FORWARD) {
  hash_add(dw->dw_fwdhash, tdp);
  return;
 }

 (void) hash_find_iter(dw->dw_fwdhash, tdp, die_fwd_map, tdp);

 (void) die_unsigned(dw, str, DW_AT_byte_size, &sz, DW_ATTR_REQ);
 tdp->t_size = sz;




 if ((mem = die_child(dw, str)) == ((void*)0)) {
  goto out;
 }

 mlastp = &tdp->t_members;

 do {
  Dwarf_Off memoff = die_off(dw, mem);
  Dwarf_Half tag = die_tag(dw, mem);
  Dwarf_Unsigned mloff;

  if (tag != DW_TAG_member) {

   die_create_one(dw, mem);
   continue;
  }

  debug(3, "die %llu: mem %llu: creating member\n", off, memoff);

  ml = xcalloc(sizeof (mlist_t));
  if ((ml->ml_name = die_name(dw, mem)) == ((void*)0))
   ml->ml_name = ((void*)0);

  ml->ml_type = die_lookup_pass1(dw, mem, DW_AT_type);

  if (die_mem_offset(dw, mem, DW_AT_data_member_location,
      &mloff, 0)) {
   debug(3, "die %llu: got mloff %llx\n", off,
       (u_longlong_t)mloff);
   ml->ml_offset = mloff * 8;
  }

  if (die_unsigned(dw, mem, DW_AT_bit_size, &bitsz, 0))
   ml->ml_size = bitsz;
  else
   ml->ml_size = tdesc_bitsize(ml->ml_type);

  if (die_unsigned(dw, mem, DW_AT_bit_offset, &bitoff, 0)) {

   ml->ml_offset += bitoff;
  }

  debug(3, "die %llu: mem %llu: created \"%s\" (off %u sz %u)\n",
      off, memoff, ml->ml_name, ml->ml_offset, ml->ml_size);

  *mlastp = ml;
  mlastp = &ml->ml_next;
 } while ((mem = die_sibling(dw, mem)) != ((void*)0));
 if (tdp->t_members == ((void*)0)) {
  const char *old = tdesc_name(tdp);
  size_t newsz = 7 + strlen(old) + 1;
  char *new = xmalloc(newsz);
  (void) snprintf(new, newsz, "orphan %s", old);

  debug(3, "die %llu: worked around %s %s\n", off, typename, old);

  if (tdp->t_name != ((void*)0))
   free(tdp->t_name);
  tdp->t_name = new;
  return;
 }

out:
 if (tdp->t_name != ((void*)0)) {
  ii = xcalloc(sizeof (iidesc_t));
  ii->ii_type = II_SOU;
  ii->ii_name = xstrdup(tdp->t_name);
  ii->ii_dtype = tdp;

  iidesc_add(dw->dw_td->td_iihash, ii);
 }
}
