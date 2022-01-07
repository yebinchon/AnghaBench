
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int tdata_t ;
typedef int iidesc_t ;
struct TYPE_3__ {scalar_t__ iib_nobjts; void* iib_objts; scalar_t__ iib_nfuncs; void* iib_funcs; int * iib_td; } ;
typedef TYPE_1__ iiburst_t ;


 void* xcalloc (int) ;

__attribute__((used)) static iiburst_t *
iiburst_new(tdata_t *td, int max)
{
 iiburst_t *iiburst = xcalloc(sizeof (iiburst_t));
 iiburst->iib_td = td;
 iiburst->iib_funcs = xcalloc(sizeof (iidesc_t *) * max);
 iiburst->iib_nfuncs = 0;
 iiburst->iib_objts = xcalloc(sizeof (iidesc_t *) * max);
 iiburst->iib_nobjts = 0;
 return (iiburst);
}
