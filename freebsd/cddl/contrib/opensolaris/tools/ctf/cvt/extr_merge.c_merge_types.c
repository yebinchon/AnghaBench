
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ md_parent; scalar_t__ md_tgt; int ** md_tdtbr; int * md_tdtba; int ** md_iitba; } ;
typedef TYPE_1__ merge_cb_data_t ;
typedef int list_t ;
typedef int hash_t ;


 int TDATA_LAYOUT_HASH_SIZE ;
 int aborterr (char*) ;
 int add_iitba_cb ;
 int add_tdtba_cb ;
 int add_tdtbr_cb ;
 int assert (int) ;
 int debug (int,char*,int) ;
 scalar_t__ hash_count (int *) ;
 int hash_iter (int *,int ,TYPE_1__*) ;
 int * hash_new (int ,int ,int ) ;
 scalar_t__ list_count (int *) ;
 int list_iter (int *,int ,TYPE_1__*) ;
 int merge_type_cb ;
 int redir_mstr_fwds (TYPE_1__*) ;
 int tdesc_layoutcmp ;
 int tdesc_layouthash ;

__attribute__((used)) static void
merge_types(hash_t *src, merge_cb_data_t *mcd)
{
 list_t *iitba = ((void*)0);
 list_t *tdtbr = ((void*)0);
 int iirc, tdrc;

 mcd->md_iitba = &iitba;
 mcd->md_tdtba = hash_new(TDATA_LAYOUT_HASH_SIZE, tdesc_layouthash,
     tdesc_layoutcmp);
 mcd->md_tdtbr = &tdtbr;

 (void) hash_iter(src, merge_type_cb, mcd);

 tdrc = hash_iter(mcd->md_tdtba, add_tdtba_cb, mcd);
 debug(3, "add_tdtba_cb added %d items\n", tdrc);

 iirc = list_iter(*mcd->md_iitba, add_iitba_cb, mcd);
 debug(3, "add_iitba_cb added %d items\n", iirc);

 assert(list_count(*mcd->md_iitba) == 0 &&
     hash_count(mcd->md_tdtba) == 0);

 tdrc = list_iter(*mcd->md_tdtbr, add_tdtbr_cb, mcd);
 debug(3, "add_tdtbr_cb added %d items\n", tdrc);

 if (list_count(*mcd->md_tdtbr) != 0)
  aborterr("Couldn't remap all nodes\n");
 if (mcd->md_parent == mcd->md_tgt) {
  redir_mstr_fwds(mcd);
 }
}
