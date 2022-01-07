
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int ** c; } ;
typedef TYPE_1__ jacobian ;
struct TYPE_7__ {int * p; } ;
typedef TYPE_2__ curve_params ;


 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static void
point_zero(jacobian *P, const curve_params *cc)
{
 memset(P, 0, sizeof *P);
 P->c[0][0] = P->c[1][0] = P->c[2][0] = cc->p[0];
}
