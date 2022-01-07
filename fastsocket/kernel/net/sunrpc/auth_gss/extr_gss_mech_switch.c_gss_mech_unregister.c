
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_api_mech {int gm_name; int gm_list; } ;


 int dprintk (char*,int ) ;
 int gss_mech_free (struct gss_api_mech*) ;
 int list_del (int *) ;
 int registered_mechs_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

void
gss_mech_unregister(struct gss_api_mech *gm)
{
 spin_lock(&registered_mechs_lock);
 list_del(&gm->gm_list);
 spin_unlock(&registered_mechs_lock);
 dprintk("RPC:       unregistered gss mechanism %s\n", gm->gm_name);
 gss_mech_free(gm);
}
