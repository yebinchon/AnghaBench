
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_api_mech {int gm_owner; } ;


 int module_put (int ) ;

void
gss_mech_put(struct gss_api_mech * gm)
{
 if (gm)
  module_put(gm->gm_owner);
}
