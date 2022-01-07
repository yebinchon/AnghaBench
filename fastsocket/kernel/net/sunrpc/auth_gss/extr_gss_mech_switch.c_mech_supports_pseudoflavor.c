
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ u32 ;
struct gss_api_mech {int gm_pf_num; TYPE_1__* gm_pfs; } ;
struct TYPE_2__ {scalar_t__ pseudoflavor; } ;



__attribute__((used)) static inline int
mech_supports_pseudoflavor(struct gss_api_mech *gm, u32 pseudoflavor)
{
 int i;

 for (i = 0; i < gm->gm_pf_num; i++) {
  if (gm->gm_pfs[i].pseudoflavor == pseudoflavor)
   return 1;
 }
 return 0;
}
