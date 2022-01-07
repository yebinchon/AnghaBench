
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int td_ref; int td_layouthash; int td_iihash; void* td_curemark; void* td_curvgen; } ;
typedef TYPE_1__ tdata_t ;
struct TYPE_8__ {void* md_ta; void* md_fdida; TYPE_1__* md_tgt; int md_flags; TYPE_1__* md_parent; } ;
typedef TYPE_2__ merge_cb_data_t ;


 void* MAX (void*,void*) ;
 int MCD_F_REFMERGE ;
 int MCD_F_SELFUNIQUIFY ;
 int alist_free (void*) ;
 void* alist_new (int *,int *) ;
 int alist_stats (void*,int ) ;
 int assert (int) ;
 int debug (int,char*) ;
 int debug_level ;
 int hash_stats (int ,int) ;
 int merge_types (int ,TYPE_2__*) ;

void
merge_into_master(tdata_t *cur, tdata_t *mstr, tdata_t *tgt, int selfuniquify)
{
 merge_cb_data_t mcd;

 cur->td_ref++;
 mstr->td_ref++;
 if (tgt)
  tgt->td_ref++;

 assert(cur->td_ref == 1 && mstr->td_ref == 1 &&
     (tgt == ((void*)0) || tgt->td_ref == 1));

 mcd.md_parent = mstr;
 mcd.md_tgt = (tgt ? tgt : mstr);
 mcd.md_ta = alist_new(((void*)0), ((void*)0));
 mcd.md_fdida = alist_new(((void*)0), ((void*)0));
 mcd.md_flags = 0;

 if (selfuniquify)
  mcd.md_flags |= MCD_F_SELFUNIQUIFY;
 if (tgt)
  mcd.md_flags |= MCD_F_REFMERGE;

 mstr->td_curvgen = MAX(mstr->td_curvgen, cur->td_curvgen);
 mstr->td_curemark = MAX(mstr->td_curemark, cur->td_curemark);

 merge_types(cur->td_iihash, &mcd);

 if (debug_level >= 3) {
  debug(3, "Type association stats\n");
  alist_stats(mcd.md_ta, 0);
  debug(3, "Layout hash stats\n");
  hash_stats(mcd.md_tgt->td_layouthash, 1);
 }

 alist_free(mcd.md_fdida);
 alist_free(mcd.md_ta);

 cur->td_ref--;
 mstr->td_ref--;
 if (tgt)
  tgt->td_ref--;
}
