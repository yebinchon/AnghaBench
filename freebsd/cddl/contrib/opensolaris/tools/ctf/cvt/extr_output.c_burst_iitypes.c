
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int ii_type; int ii_flags; TYPE_1__* ii_dtype; } ;
typedef TYPE_2__ iidesc_t ;
struct TYPE_7__ {int iib_tdtd; } ;
typedef TYPE_3__ iiburst_t ;
struct TYPE_5__ {int t_flags; } ;


 int IIDESC_F_USED ;




 int TDESC_F_ISROOT ;
 int iitraverse_td (TYPE_2__*,int ) ;

__attribute__((used)) static int
burst_iitypes(void *data, void *arg)
{
 iidesc_t *ii = data;
 iiburst_t *iiburst = arg;

 switch (ii->ii_type) {
 case 131:
 case 129:
 case 130:
 case 128:
  if (!(ii->ii_flags & IIDESC_F_USED))
   return (0);
  break;
 default:
  break;
 }

 ii->ii_dtype->t_flags |= TDESC_F_ISROOT;
 (void) iitraverse_td(ii, iiburst->iib_tdtd);
 return (1);
}
