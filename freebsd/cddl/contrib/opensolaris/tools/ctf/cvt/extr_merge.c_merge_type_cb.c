
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_5__ ;
typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tdtrav_cb_f ;
struct TYPE_13__ {int md_flags; int md_iitba; TYPE_2__* md_parent; int md_ta; } ;
typedef TYPE_3__ merge_cb_data_t ;
struct TYPE_14__ {int iif_refmerge; int iif_newidx; int iif_ta; TYPE_5__* iif_template; } ;
typedef TYPE_4__ iifind_data_t ;
struct TYPE_15__ {char* ii_name; int ii_type; TYPE_1__* ii_dtype; } ;
typedef TYPE_5__ iidesc_t ;
struct TYPE_12__ {int td_iihash; int td_curvgen; } ;
struct TYPE_11__ {int t_id; } ;


 int MCD_F_REFMERGE ;
 int MCD_F_SELFUNIQUIFY ;
 int debug (int,char*,char*,int ) ;
 int get_mapping (int ,int ) ;
 int hash_match (int ,TYPE_5__*,int ,TYPE_4__*) ;
 int iidesc_match ;
 int iitraverse (TYPE_5__*,int *,int *,int ,int *,TYPE_3__*) ;
 int list_add (int ,TYPE_5__*) ;
 int * map_post ;
 int map_pre ;
 int * map_self_post ;

__attribute__((used)) static int
merge_type_cb(void *data, void *arg)
{
 iidesc_t *sii = data;
 merge_cb_data_t *mcd = arg;
 iifind_data_t iif;
 tdtrav_cb_f *post;

 post = (mcd->md_flags & MCD_F_SELFUNIQUIFY ? map_self_post : map_post);


 (void) iitraverse(sii, &mcd->md_parent->td_curvgen, ((void*)0), map_pre, post,
     mcd);


 iif.iif_template = sii;
 iif.iif_ta = mcd->md_ta;
 iif.iif_newidx = get_mapping(mcd->md_ta, sii->ii_dtype->t_id);
 iif.iif_refmerge = (mcd->md_flags & MCD_F_REFMERGE);

 if (hash_match(mcd->md_parent->td_iihash, sii, iidesc_match,
     &iif) == 1)

  return (1);

 debug(3, "tba %s (%d)\n", (sii->ii_name ? sii->ii_name : "(anon)"),
     sii->ii_type);

 list_add(mcd->md_iitba, sii);

 return (0);
}
