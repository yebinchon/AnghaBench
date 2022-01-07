
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_api_mech {int gm_name; int gm_list; } ;


 int dprintk (char*,int ) ;
 int gss_mech_svc_setup (struct gss_api_mech*) ;
 int list_add (int *,int *) ;
 int registered_mechs ;
 int registered_mechs_lock ;
 int spin_lock (int *) ;
 int spin_unlock (int *) ;

int
gss_mech_register(struct gss_api_mech *gm)
{
 int status;

 status = gss_mech_svc_setup(gm);
 if (status)
  return status;
 spin_lock(&registered_mechs_lock);
 list_add(&gm->gm_list, &registered_mechs);
 spin_unlock(&registered_mechs_lock);
 dprintk("RPC:       registered gss mechanism %s\n", gm->gm_name);
 return 0;
}
