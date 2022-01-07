
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int tdesc_t ;
struct TYPE_6__ {int ii_nargs; struct TYPE_6__* ii_args; int * ii_owner; int * ii_name; } ;
typedef TYPE_1__ iidesc_t ;


 int bcopy (TYPE_1__*,TYPE_1__*,int) ;
 void* xmalloc (int) ;
 int * xstrdup (int *) ;

iidesc_t *
iidesc_dup(iidesc_t *src)
{
 iidesc_t *tgt;

 tgt = xmalloc(sizeof (iidesc_t));
 bcopy(src, tgt, sizeof (iidesc_t));

 tgt->ii_name = src->ii_name ? xstrdup(src->ii_name) : ((void*)0);
 tgt->ii_owner = src->ii_owner ? xstrdup(src->ii_owner) : ((void*)0);

 if (tgt->ii_nargs) {
  tgt->ii_args = xmalloc(sizeof (tdesc_t *) * tgt->ii_nargs);
  bcopy(src->ii_args, tgt->ii_args,
      sizeof (tdesc_t *) * tgt->ii_nargs);
 }

 return (tgt);
}
