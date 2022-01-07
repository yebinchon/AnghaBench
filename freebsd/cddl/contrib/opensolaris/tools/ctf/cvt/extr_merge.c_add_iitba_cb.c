
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_6__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_16__ {int md_flags; TYPE_3__* md_tgt; TYPE_2__* md_parent; int md_ta; int md_iitba; } ;
typedef TYPE_4__ merge_cb_data_t ;
struct TYPE_17__ {int iif_newidx; int iif_refmerge; int iif_ta; TYPE_6__* iif_template; } ;
typedef TYPE_5__ iifind_data_t ;
struct TYPE_18__ {char* ii_name; TYPE_1__* ii_dtype; } ;
typedef TYPE_6__ iidesc_t ;
struct TYPE_15__ {int td_iihash; } ;
struct TYPE_14__ {int td_iihash; } ;
struct TYPE_13__ {int t_id; } ;


 int MCD_F_REFMERGE ;
 int assert (int) ;
 TYPE_6__* conjure_iidesc (TYPE_6__*,TYPE_4__*) ;
 int debug (int,char*,char*) ;
 int get_mapping (int ,int ) ;
 int hash_add (int ,TYPE_6__*) ;
 int hash_match (int ,TYPE_6__*,int ,TYPE_5__*) ;
 int iidesc_match ;
 int list_remove (int ,void*,int *,int *) ;

__attribute__((used)) static int
add_iitba_cb(void *data, void *private)
{
 merge_cb_data_t *mcd = private;
 iidesc_t *tba = data;
 iidesc_t *new;
 iifind_data_t iif;
 int newidx;

 newidx = get_mapping(mcd->md_ta, tba->ii_dtype->t_id);
 assert(newidx != -1);

 (void) list_remove(mcd->md_iitba, data, ((void*)0), ((void*)0));

 iif.iif_template = tba;
 iif.iif_ta = mcd->md_ta;
 iif.iif_newidx = newidx;
 iif.iif_refmerge = (mcd->md_flags & MCD_F_REFMERGE);

 if (hash_match(mcd->md_parent->td_iihash, tba, iidesc_match,
     &iif) == 1) {
  debug(3, "iidesc_t %s already exists\n",
      (tba->ii_name ? tba->ii_name : "(anon)"));
  return (1);
 }

 new = conjure_iidesc(tba, mcd);
 hash_add(mcd->md_tgt->td_iihash, new);

 return (1);
}
