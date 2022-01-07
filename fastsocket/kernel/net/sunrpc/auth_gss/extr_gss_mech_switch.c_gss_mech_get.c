
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_api_mech {int gm_owner; } ;


 int __module_get (int ) ;

struct gss_api_mech *
gss_mech_get(struct gss_api_mech *gm)
{
 __module_get(gm->gm_owner);
 return gm;
}
