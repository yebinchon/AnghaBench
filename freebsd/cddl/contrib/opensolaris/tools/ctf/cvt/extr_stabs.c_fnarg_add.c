
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int tdesc_t ;
struct TYPE_4__ {int ii_nargs; int * ii_dtype; int ** ii_args; } ;
typedef TYPE_1__ iidesc_t ;


 int FUNCARG_DEF ;
 int ** xmalloc (int) ;
 int ** xrealloc (int **,int) ;

__attribute__((used)) static void
fnarg_add(iidesc_t *curfun, iidesc_t *arg)
{
 curfun->ii_nargs++;

 if (curfun->ii_nargs == 1)
  curfun->ii_args = xmalloc(sizeof (tdesc_t *) * FUNCARG_DEF);
 else if (curfun->ii_nargs > FUNCARG_DEF) {
  curfun->ii_args = xrealloc(curfun->ii_args,
      sizeof (tdesc_t *) * curfun->ii_nargs);
 }

 curfun->ii_args[curfun->ii_nargs - 1] = arg->ii_dtype;
 arg->ii_dtype = ((void*)0);
}
