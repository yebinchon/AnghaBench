
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_37__ TYPE_9__ ;
typedef struct TYPE_36__ TYPE_8__ ;
typedef struct TYPE_35__ TYPE_7__ ;
typedef struct TYPE_34__ TYPE_6__ ;
typedef struct TYPE_33__ TYPE_5__ ;
typedef struct TYPE_32__ TYPE_4__ ;
typedef struct TYPE_31__ TYPE_3__ ;
typedef struct TYPE_30__ TYPE_2__ ;
typedef struct TYPE_29__ TYPE_1__ ;
typedef struct TYPE_28__ TYPE_14__ ;
typedef struct TYPE_27__ TYPE_13__ ;
typedef struct TYPE_26__ TYPE_12__ ;
typedef struct TYPE_25__ TYPE_11__ ;
typedef struct TYPE_24__ TYPE_10__ ;


typedef int ushort_t ;
typedef int uint_t ;
typedef int tid_t ;
struct TYPE_31__ {scalar_t__ t_type; size_t t_size; int t_id; int * t_name; struct TYPE_31__* t_tdesc; TYPE_2__* t_fndef; TYPE_8__* t_emem; TYPE_5__* t_members; TYPE_1__* t_ardef; TYPE_6__* t_intr; } ;
typedef TYPE_3__ tdesc_t ;
struct TYPE_32__ {int td_iihash; int td_fwdlist; } ;
typedef TYPE_4__ tdata_t ;
struct TYPE_33__ {int ml_offset; int ml_size; TYPE_3__* ml_type; void* ml_name; struct TYPE_33__* ml_next; } ;
typedef TYPE_5__ mlist_t ;
struct TYPE_34__ {int intr_signed; char intr_iformat; int intr_nbits; int intr_offset; int intr_fformat; int intr_type; } ;
typedef TYPE_6__ intr_t ;
struct TYPE_35__ {TYPE_3__* ii_dtype; int ii_type; } ;
typedef TYPE_7__ iidesc_t ;
typedef int fndef_t ;
struct TYPE_36__ {int el_number; void* el_name; struct TYPE_36__* el_next; } ;
typedef TYPE_8__ elist_t ;
struct TYPE_37__ {size_t ctt_type; int ctt_info; int ctt_name; } ;
typedef TYPE_9__ ctf_type_t ;
struct TYPE_24__ {scalar_t__ ctm_name; size_t ctm_type; int ctm_offset; } ;
typedef TYPE_10__ ctf_member_t ;
struct TYPE_25__ {scalar_t__ ctlm_name; size_t ctlm_type; } ;
typedef TYPE_11__ ctf_lmember_t ;
struct TYPE_26__ {scalar_t__ cth_typeoff; size_t cth_stroff; } ;
typedef TYPE_12__ ctf_header_t ;
struct TYPE_27__ {scalar_t__ cte_name; int cte_value; } ;
typedef TYPE_13__ ctf_enum_t ;
struct TYPE_28__ {size_t cta_contents; size_t cta_index; int cta_nelems; } ;
typedef TYPE_14__ ctf_array_t ;
typedef scalar_t__ caddr_t ;
typedef int ardef_t ;
struct TYPE_30__ {int fn_vargs; TYPE_3__** fn_args; int fn_nargs; TYPE_3__* fn_ret; } ;
struct TYPE_29__ {int ad_nelems; TYPE_3__* ad_idxtype; TYPE_3__* ad_contents; } ;


 scalar_t__ ARRAY ;
 scalar_t__ CONST ;
 int CTF_FP_BITS (int) ;
 int CTF_FP_ENCODING (int) ;
 int CTF_FP_OFFSET (int) ;
 scalar_t__ CTF_INFO_ISROOT (int ) ;
 int CTF_INFO_KIND (int ) ;
 int CTF_INFO_VLEN (int ) ;
 int CTF_INT_BITS (int) ;
 int CTF_INT_BOOL ;
 int CTF_INT_CHAR ;
 int CTF_INT_ENCODING (int) ;
 int CTF_INT_OFFSET (int) ;
 int CTF_INT_SIGNED ;
 int CTF_INT_VARARGS ;
 scalar_t__ CTF_LMEM_OFFSET (TYPE_11__*) ;
 size_t CTF_LSTRUCT_THRESH ;
 int CTF_MAX_TYPE ;
 scalar_t__ CTF_NAME_OFFSET (int ) ;
 scalar_t__ CTF_NAME_STID (int ) ;
 scalar_t__ CTF_STRTAB_0 ;
 scalar_t__ ENUM ;
 scalar_t__ FORWARD ;
 scalar_t__ FUNCTION ;
 int II_SOU ;
 int II_TYPE ;
 void* INTRINSIC ;
 int INTR_INT ;
 int INTR_REAL ;
 scalar_t__ POINTER ;
 scalar_t__ RESTRICT ;
 scalar_t__ STRUCT ;
 scalar_t__ TYPEDEF ;
 scalar_t__ UNION ;
 scalar_t__ VOLATILE ;
 int debug (int,char*,int,...) ;
 int get_ctt_size (TYPE_9__*,size_t*,size_t*) ;
 int hash_add (int ,TYPE_7__*) ;
 TYPE_7__* iidesc_new (int *) ;
 int list_add (int *,TYPE_3__*) ;
 int parseterminate (char*,...) ;
 int tdesc_name (TYPE_3__*) ;
 int warning (char*,int) ;
 void* xcalloc (int) ;
 void* xmalloc (int) ;
 void* xstrdup (scalar_t__) ;

__attribute__((used)) static void
resurrect_types(ctf_header_t *h, tdata_t *td, tdesc_t **tdarr, int tdsize,
    caddr_t ctfdata, int maxid)
{
 caddr_t buf = ctfdata + h->cth_typeoff;
 size_t bufsz = h->cth_stroff - h->cth_typeoff;
 caddr_t sbuf = ctfdata + h->cth_stroff;
 caddr_t dptr = buf;
 tdesc_t *tdp;
 uint_t data;
 uint_t encoding;
 size_t size, increment;
 int tcnt;
 int iicnt = 0;
 tid_t tid, argid;
 int kind, vlen;
 int i;

 elist_t **epp;
 mlist_t **mpp;
 intr_t *ip;

 ctf_type_t *ctt;
 ctf_array_t *cta;
 ctf_enum_t *cte;





 if (maxid == 0)
  maxid = CTF_MAX_TYPE;

 for (dptr = buf, tcnt = 0, tid = 1; dptr < buf + bufsz; tcnt++, tid++) {
  if (tid > maxid)
   break;

  if (tid >= tdsize)
   parseterminate("Reference to invalid type %d", tid);

  void *v = (void *) dptr;
  ctt = v;

  get_ctt_size(ctt, &size, &increment);
  dptr += increment;

  tdp = tdarr[tid];

  if (CTF_NAME_STID(ctt->ctt_name) != CTF_STRTAB_0)
   parseterminate(
       "Unable to cope with non-zero strtab id");
  if (CTF_NAME_OFFSET(ctt->ctt_name) != 0) {
   tdp->t_name =
       xstrdup(sbuf + CTF_NAME_OFFSET(ctt->ctt_name));
  } else
   tdp->t_name = ((void*)0);

  kind = CTF_INFO_KIND(ctt->ctt_info);
  vlen = CTF_INFO_VLEN(ctt->ctt_info);

  switch (kind) {
  case 135:
   tdp->t_type = INTRINSIC;
   tdp->t_size = size;

   v = (void *) dptr;
   data = *((uint_t *)v);
   dptr += sizeof (uint_t);
   encoding = CTF_INT_ENCODING(data);

   ip = xmalloc(sizeof (intr_t));
   ip->intr_type = INTR_INT;
   ip->intr_signed = (encoding & CTF_INT_SIGNED) ? 1 : 0;

   if (encoding & CTF_INT_CHAR)
    ip->intr_iformat = 'c';
   else if (encoding & CTF_INT_BOOL)
    ip->intr_iformat = 'b';
   else if (encoding & CTF_INT_VARARGS)
    ip->intr_iformat = 'v';
   else
    ip->intr_iformat = '\0';

   ip->intr_offset = CTF_INT_OFFSET(data);
   ip->intr_nbits = CTF_INT_BITS(data);
   tdp->t_intr = ip;
   break;

  case 138:
   tdp->t_type = INTRINSIC;
   tdp->t_size = size;

   v = (void *) dptr;
   data = *((uint_t *)v);
   dptr += sizeof (uint_t);

   ip = xcalloc(sizeof (intr_t));
   ip->intr_type = INTR_REAL;
   ip->intr_fformat = CTF_FP_ENCODING(data);
   ip->intr_offset = CTF_FP_OFFSET(data);
   ip->intr_nbits = CTF_FP_BITS(data);
   tdp->t_intr = ip;
   break;

  case 134:
   tdp->t_type = POINTER;
   tdp->t_tdesc = tdarr[ctt->ctt_type];
   break;

  case 141:
   tdp->t_type = ARRAY;
   tdp->t_size = size;

   v = (void *) dptr;
   cta = v;
   dptr += sizeof (ctf_array_t);

   tdp->t_ardef = xmalloc(sizeof (ardef_t));
   tdp->t_ardef->ad_contents = tdarr[cta->cta_contents];
   tdp->t_ardef->ad_idxtype = tdarr[cta->cta_index];
   tdp->t_ardef->ad_nelems = cta->cta_nelems;
   break;

  case 132:
  case 130:
   tdp->t_type = (kind == 132 ? STRUCT : UNION);
   tdp->t_size = size;

   if (size < CTF_LSTRUCT_THRESH) {
    for (i = 0, mpp = &tdp->t_members; i < vlen;
        i++, mpp = &((*mpp)->ml_next)) {
     v = (void *) dptr;
     ctf_member_t *ctm = v;
     dptr += sizeof (ctf_member_t);

     *mpp = xmalloc(sizeof (mlist_t));
     (*mpp)->ml_name = xstrdup(sbuf +
         ctm->ctm_name);
     (*mpp)->ml_type = tdarr[ctm->ctm_type];
     (*mpp)->ml_offset = ctm->ctm_offset;
     (*mpp)->ml_size = 0;
    }
   } else {
    for (i = 0, mpp = &tdp->t_members; i < vlen;
        i++, mpp = &((*mpp)->ml_next)) {
     v = (void *) dptr;
     ctf_lmember_t *ctlm = v;
     dptr += sizeof (ctf_lmember_t);

     *mpp = xmalloc(sizeof (mlist_t));
     (*mpp)->ml_name = xstrdup(sbuf +
         ctlm->ctlm_name);
     (*mpp)->ml_type =
         tdarr[ctlm->ctlm_type];
     (*mpp)->ml_offset =
         (int)CTF_LMEM_OFFSET(ctlm);
     (*mpp)->ml_size = 0;
    }
   }

   *mpp = ((void*)0);
   break;

  case 139:
   tdp->t_type = ENUM;
   tdp->t_size = size;

   for (i = 0, epp = &tdp->t_emem; i < vlen;
       i++, epp = &((*epp)->el_next)) {
    v = (void *) dptr;
    cte = v;
    dptr += sizeof (ctf_enum_t);

    *epp = xmalloc(sizeof (elist_t));
    (*epp)->el_name = xstrdup(sbuf + cte->cte_name);
    (*epp)->el_number = cte->cte_value;
   }
   *epp = ((void*)0);
   break;

  case 137:
   tdp->t_type = FORWARD;
   list_add(&td->td_fwdlist, tdp);
   break;

  case 131:
   tdp->t_type = TYPEDEF;
   tdp->t_tdesc = tdarr[ctt->ctt_type];
   break;

  case 128:
   tdp->t_type = VOLATILE;
   tdp->t_tdesc = tdarr[ctt->ctt_type];
   break;

  case 140:
   tdp->t_type = CONST;
   tdp->t_tdesc = tdarr[ctt->ctt_type];
   break;

  case 136:
   tdp->t_type = FUNCTION;
   tdp->t_fndef = xcalloc(sizeof (fndef_t));
   tdp->t_fndef->fn_ret = tdarr[ctt->ctt_type];

   v = (void *) (dptr + (sizeof (ushort_t) * (vlen - 1)));
   if (vlen > 0 && *(ushort_t *)v == 0)
    tdp->t_fndef->fn_vargs = 1;

   tdp->t_fndef->fn_nargs = vlen - tdp->t_fndef->fn_vargs;
   tdp->t_fndef->fn_args = xcalloc(sizeof (tdesc_t) *
       vlen - tdp->t_fndef->fn_vargs);

   for (i = 0; i < vlen; i++) {
    v = (void *) dptr;
    argid = *(ushort_t *)v;
    dptr += sizeof (ushort_t);

    if (argid != 0)
     tdp->t_fndef->fn_args[i] = tdarr[argid];
   }

   if (vlen & 1)
    dptr += sizeof (ushort_t);
   break;

  case 133:
   tdp->t_type = RESTRICT;
   tdp->t_tdesc = tdarr[ctt->ctt_type];
   break;

  case 129:
   break;

  default:
   warning("Can't parse unknown CTF type %d\n", kind);
  }

  if (CTF_INFO_ISROOT(ctt->ctt_info)) {
   iidesc_t *ii = iidesc_new(tdp->t_name);
   if (tdp->t_type == STRUCT || tdp->t_type == UNION ||
       tdp->t_type == ENUM)
    ii->ii_type = II_SOU;
   else
    ii->ii_type = II_TYPE;
   ii->ii_dtype = tdp;
   hash_add(td->td_iihash, ii);

   iicnt++;
  }

  debug(3, "Resurrected %d %stype %s (%d)\n", tdp->t_type,
      (CTF_INFO_ISROOT(ctt->ctt_info) ? "root " : ""),
      tdesc_name(tdp), tdp->t_id);
 }

 debug(3, "Resurrected %d types (%d were roots)\n", tcnt, iicnt);
}
