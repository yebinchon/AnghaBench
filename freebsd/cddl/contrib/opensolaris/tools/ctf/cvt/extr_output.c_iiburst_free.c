
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int iib_types; struct TYPE_4__* iib_objts; struct TYPE_4__* iib_funcs; } ;
typedef TYPE_1__ iiburst_t ;


 int free (TYPE_1__*) ;
 int list_free (int ,int *,int *) ;

__attribute__((used)) static void
iiburst_free(iiburst_t *iiburst)
{
 free(iiburst->iib_funcs);
 free(iiburst->iib_objts);
 list_free(iiburst->iib_types, ((void*)0), ((void*)0));
 free(iiburst);
}
