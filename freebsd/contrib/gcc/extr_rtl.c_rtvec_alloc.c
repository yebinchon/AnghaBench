
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef int rtx ;
typedef TYPE_1__* rtvec ;
struct TYPE_5__ {int * elem; } ;


 int PUT_NUM_ELEM (TYPE_1__*,int) ;
 TYPE_1__* ggc_alloc_rtvec (int) ;
 int memset (int *,int ,int) ;
 int rtvec_alloc_counts ;
 int rtvec_alloc_sizes ;

rtvec
rtvec_alloc (int n)
{
  rtvec rt;

  rt = ggc_alloc_rtvec (n);

  memset (&rt->elem[0], 0, n * sizeof (rtx));

  PUT_NUM_ELEM (rt, n);






  return rt;
}
