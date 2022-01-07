
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_8__ {int dn_flags; scalar_t__ dn_kind; scalar_t__ dn_value; int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;
struct TYPE_9__ {int ctr_contents; } ;
typedef TYPE_2__ ctf_arinfo_t ;


 int CTF_ERR ;
 scalar_t__ CTF_K_ARRAY ;
 scalar_t__ CTF_K_POINTER ;
 int DT_NF_COOKED ;
 int DT_NF_USERLAND ;
 scalar_t__ DT_NODE_INT ;
 scalar_t__ IS_VOID (int ) ;
 int assert (int) ;
 scalar_t__ ctf_array_info (int *,int ,TYPE_2__*) ;
 scalar_t__ ctf_type_compat (int *,int ,int *,int ) ;
 scalar_t__ ctf_type_encoding (int *,int ,int *) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ dt_node_is_dynamic (TYPE_1__ const*) ;
 int dt_node_is_integer (TYPE_1__ const*) ;

int
dt_node_is_ptrcompat(const dt_node_t *lp, const dt_node_t *rp,
    ctf_file_t **fpp, ctf_id_t *tp)
{
 ctf_file_t *lfp = lp->dn_ctfp;
 ctf_file_t *rfp = rp->dn_ctfp;

 ctf_id_t lbase = CTF_ERR, rbase = CTF_ERR;
 ctf_id_t lref = CTF_ERR, rref = CTF_ERR;

 int lp_is_void, rp_is_void, lp_is_int, rp_is_int, compat;
 uint_t lkind, rkind;
 ctf_encoding_t e;
 ctf_arinfo_t r;

 assert(lp->dn_flags & DT_NF_COOKED);
 assert(rp->dn_flags & DT_NF_COOKED);

 if (dt_node_is_dynamic(lp) || dt_node_is_dynamic(rp))
  return (0);

 lp_is_int = dt_node_is_integer(lp);
 rp_is_int = dt_node_is_integer(rp);

 if (lp_is_int && rp_is_int)
  return (0);

 if (lp_is_int && (lp->dn_kind != DT_NODE_INT || lp->dn_value != 0))
  return (0);

 if (rp_is_int && (rp->dn_kind != DT_NODE_INT || rp->dn_value != 0))
  return (0);

 if ((lp_is_int == 0 && rp_is_int == 0) && (
     (lp->dn_flags & DT_NF_USERLAND) ^ (rp->dn_flags & DT_NF_USERLAND)))
  return (0);






 if (!lp_is_int) {
  lbase = ctf_type_resolve(lfp, lp->dn_type);
  lkind = ctf_type_kind(lfp, lbase);

  if (lkind == CTF_K_POINTER) {
   lref = ctf_type_resolve(lfp,
       ctf_type_reference(lfp, lbase));
  } else if (lkind == CTF_K_ARRAY &&
      ctf_array_info(lfp, lbase, &r) == 0) {
   lref = ctf_type_resolve(lfp, r.ctr_contents);
  }
 }

 if (!rp_is_int) {
  rbase = ctf_type_resolve(rfp, rp->dn_type);
  rkind = ctf_type_kind(rfp, rbase);

  if (rkind == CTF_K_POINTER) {
   rref = ctf_type_resolve(rfp,
       ctf_type_reference(rfp, rbase));
  } else if (rkind == CTF_K_ARRAY &&
      ctf_array_info(rfp, rbase, &r) == 0) {
   rref = ctf_type_resolve(rfp, r.ctr_contents);
  }
 }






 if (lp_is_int) {
  lbase = rbase;
  lkind = rkind;
  lref = rref;
  lfp = rfp;
 } else if (rp_is_int) {
  rbase = lbase;
  rkind = lkind;
  rref = lref;
  rfp = lfp;
 }

 lp_is_void = ctf_type_encoding(lfp, lref, &e) == 0 && IS_VOID(e);
 rp_is_void = ctf_type_encoding(rfp, rref, &e) == 0 && IS_VOID(e);






 compat = (lkind == CTF_K_POINTER || lkind == CTF_K_ARRAY) &&
     (rkind == CTF_K_POINTER || rkind == CTF_K_ARRAY) &&
     (lp_is_void || rp_is_void || ctf_type_compat(lfp, lref, rfp, rref));

 if (compat) {
  if (fpp != ((void*)0))
   *fpp = rp_is_void ? lfp : rfp;
  if (tp != ((void*)0))
   *tp = rp_is_void ? lbase : rbase;
 }

 return (compat);
}
