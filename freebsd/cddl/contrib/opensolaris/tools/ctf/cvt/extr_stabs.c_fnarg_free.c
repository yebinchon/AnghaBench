
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ii_args; scalar_t__ ii_nargs; } ;
typedef TYPE_1__ iidesc_t ;


 int free (int *) ;

__attribute__((used)) static void
fnarg_free(iidesc_t *ii)
{
 ii->ii_nargs = 0;
 free(ii->ii_args);
 ii->ii_args = ((void*)0);
}
