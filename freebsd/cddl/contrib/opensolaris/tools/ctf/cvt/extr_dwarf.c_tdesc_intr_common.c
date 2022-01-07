
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {size_t t_size; int t_id; int t_flags; TYPE_2__* t_intr; int t_type; int t_name; } ;
typedef TYPE_1__ tdesc_t ;
struct TYPE_6__ {int intr_signed; size_t intr_nbits; int intr_type; } ;
typedef TYPE_2__ intr_t ;
typedef int dwarf_t ;


 int INTRINSIC ;
 int INTR_INT ;
 size_t NBBY ;
 int TDESC_F_RESOLVED ;
 int tdesc_add (int *,TYPE_1__*) ;
 void* xcalloc (int) ;
 int xstrdup (char const*) ;

__attribute__((used)) static tdesc_t *
tdesc_intr_common(dwarf_t *dw, int tid, const char *name, size_t sz)
{
 tdesc_t *tdp;
 intr_t *intr;

 intr = xcalloc(sizeof (intr_t));
 intr->intr_type = INTR_INT;
 intr->intr_signed = 1;
 intr->intr_nbits = sz * NBBY;

 tdp = xcalloc(sizeof (tdesc_t));
 tdp->t_name = xstrdup(name);
 tdp->t_size = sz;
 tdp->t_id = tid;
 tdp->t_type = INTRINSIC;
 tdp->t_intr = intr;
 tdp->t_flags = TDESC_F_RESOLVED;

 tdesc_add(dw, tdp);

 return (tdp);
}
