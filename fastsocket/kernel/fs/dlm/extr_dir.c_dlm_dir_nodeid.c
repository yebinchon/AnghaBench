
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dlm_rsb {int res_hash; int res_ls; } ;


 int dlm_hash2nodeid (int ,int ) ;

int dlm_dir_nodeid(struct dlm_rsb *r)
{
 return dlm_hash2nodeid(r->res_ls, r->res_hash);
}
