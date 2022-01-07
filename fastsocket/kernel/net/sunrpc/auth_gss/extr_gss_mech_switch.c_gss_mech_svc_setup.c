
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_desc {int * auth_domain_name; int pseudoflavor; int name; } ;
struct gss_api_mech {int gm_pf_num; struct pf_desc* gm_pfs; } ;


 int ENOMEM ;
 int gss_mech_free (struct gss_api_mech*) ;
 int * make_auth_domain_name (int ) ;
 int svcauth_gss_register_pseudoflavor (int ,int *) ;

__attribute__((used)) static int
gss_mech_svc_setup(struct gss_api_mech *gm)
{
 struct pf_desc *pf;
 int i, status;

 for (i = 0; i < gm->gm_pf_num; i++) {
  pf = &gm->gm_pfs[i];
  pf->auth_domain_name = make_auth_domain_name(pf->name);
  status = -ENOMEM;
  if (pf->auth_domain_name == ((void*)0))
   goto out;
  status = svcauth_gss_register_pseudoflavor(pf->pseudoflavor,
       pf->auth_domain_name);
  if (status)
   goto out;
 }
 return 0;
out:
 gss_mech_free(gm);
 return status;
}
