
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pf_desc {int * auth_domain_name; } ;
struct gss_api_mech {int gm_pf_num; struct pf_desc* gm_pfs; } ;


 int kfree (int *) ;

__attribute__((used)) static void
gss_mech_free(struct gss_api_mech *gm)
{
 struct pf_desc *pf;
 int i;

 for (i = 0; i < gm->gm_pf_num; i++) {
  pf = &gm->gm_pfs[i];
  kfree(pf->auth_domain_name);
  pf->auth_domain_name = ((void*)0);
 }
}
