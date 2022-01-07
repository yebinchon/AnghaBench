
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int t_flags; TYPE_5__* t_intr; int t_type; int t_id; int t_size; int t_name; } ;
typedef TYPE_1__ tdesc_t ;
typedef int intr_t ;
typedef int dwarf_t ;
struct TYPE_8__ {size_t intr_nbits; } ;


 int INTRINSIC ;
 int TDESC_F_RESOLVED ;
 int bcopy (TYPE_5__*,TYPE_5__*,int) ;
 int mfgtid_next (int *) ;
 int tdesc_add (int *,TYPE_1__*) ;
 int terminate (char*,int ) ;
 void* xcalloc (int) ;
 int xstrdup (int ) ;

__attribute__((used)) static tdesc_t *
tdesc_intr_clone(dwarf_t *dw, tdesc_t *old, size_t bitsz)
{
 tdesc_t *new = xcalloc(sizeof (tdesc_t));

 if (!(old->t_flags & TDESC_F_RESOLVED)) {
  terminate("tdp %u: attempt to make a bit field from an "
      "unresolved type\n", old->t_id);
 }

 new->t_name = xstrdup(old->t_name);
 new->t_size = old->t_size;
 new->t_id = mfgtid_next(dw);
 new->t_type = INTRINSIC;
 new->t_flags = TDESC_F_RESOLVED;

 new->t_intr = xcalloc(sizeof (intr_t));
 bcopy(old->t_intr, new->t_intr, sizeof (intr_t));
 new->t_intr->intr_nbits = bitsz;

 tdesc_add(dw, new);

 return (new);
}
