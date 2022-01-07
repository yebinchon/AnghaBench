
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_7__ {int * rmd_map; TYPE_1__* rmd_tgt; } ;
typedef TYPE_2__ redir_mstr_data_t ;
struct TYPE_8__ {TYPE_1__* md_tgt; int md_fdida; } ;
typedef TYPE_3__ merge_cb_data_t ;
typedef int alist_t ;
struct TYPE_6__ {int td_curvgen; int td_iihash; } ;


 int alist_free (int *) ;
 scalar_t__ alist_iter (int ,int ,TYPE_2__*) ;
 int * alist_new (int *,int *) ;
 int fwd_redir_cbs ;
 int iitraverse_hash (int ,int *,int ,int *,int *,int *) ;
 int redir_mstr_fwd_cb ;

__attribute__((used)) static void
redir_mstr_fwds(merge_cb_data_t *mcd)
{
 redir_mstr_data_t rmd;
 alist_t *map = alist_new(((void*)0), ((void*)0));

 rmd.rmd_tgt = mcd->md_tgt;
 rmd.rmd_map = map;

 if (alist_iter(mcd->md_fdida, redir_mstr_fwd_cb, &rmd)) {
  (void) iitraverse_hash(mcd->md_tgt->td_iihash,
      &mcd->md_tgt->td_curvgen, fwd_redir_cbs, ((void*)0), ((void*)0), map);
 }

 alist_free(map);
}
