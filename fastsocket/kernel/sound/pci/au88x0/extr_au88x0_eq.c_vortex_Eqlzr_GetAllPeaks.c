
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int this10; } ;
struct TYPE_5__ {TYPE_2__ eq; } ;
typedef TYPE_1__ vortex_t ;
typedef int u16 ;
typedef TYPE_2__ eqlzr_t ;


 int vortex_EqHw_GetTenBandLevels (TYPE_1__*,int *) ;

__attribute__((used)) static int vortex_Eqlzr_GetAllPeaks(vortex_t * vortex, u16 * peaks, int *count)
{
 eqlzr_t *eq = &(vortex->eq);

 if (eq->this10 == 0)
  return 1;
 *count = eq->this10 * 2;
 vortex_EqHw_GetTenBandLevels(vortex, peaks);
 return 0;
}
