
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tdtrav_data_t ;
struct TYPE_2__ {int ii_nargs; int * ii_args; int ii_dtype; } ;
typedef TYPE_1__ iidesc_t ;


 int tdtraverse (int ,int *,int *) ;

int
iitraverse_td(void *arg1, void *arg2)
{
 iidesc_t *ii = arg1;
 tdtrav_data_t *tdtd = arg2;
 int i, rc;

 if ((rc = tdtraverse(ii->ii_dtype, &ii->ii_dtype, tdtd)) < 0)
  return (rc);

 for (i = 0; i < ii->ii_nargs; i++) {
  if ((rc = tdtraverse(ii->ii_args[i], &ii->ii_args[i],
      tdtd)) < 0)
   return (rc);
 }

 return (1);
}
