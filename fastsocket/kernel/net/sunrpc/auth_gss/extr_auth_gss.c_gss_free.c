
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct gss_auth {int mech; int * dentry; } ;


 int THIS_MODULE ;
 int gss_mech_put (int ) ;
 int kfree (struct gss_auth*) ;
 int module_put (int ) ;
 int rpc_unlink (int ) ;

__attribute__((used)) static void
gss_free(struct gss_auth *gss_auth)
{
 rpc_unlink(gss_auth->dentry[1]);
 rpc_unlink(gss_auth->dentry[0]);
 gss_mech_put(gss_auth->mech);

 kfree(gss_auth);
 module_put(THIS_MODULE);
}
