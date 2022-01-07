
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint_t ;
typedef int ssize_t ;
struct TYPE_11__ {int ctt_name; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_12__ {scalar_t__ cd_err; size_t* cd_order; size_t cd_len; TYPE_3__* cd_nodes; } ;
typedef TYPE_2__ ctf_decl_t ;
typedef size_t ctf_decl_prec_t ;
struct TYPE_13__ {int cd_kind; int cd_n; int cd_type; } ;
typedef TYPE_3__ ctf_decl_node_t ;


 int CTF_ERR ;
 size_t CTF_PREC_ARRAY ;
 size_t CTF_PREC_BASE ;
 size_t CTF_PREC_MAX ;
 size_t CTF_PREC_POINTER ;
 scalar_t__ ECTF_NAMELEN ;
 int ctf_decl_fini (TYPE_2__*) ;
 int ctf_decl_init (TYPE_2__*,char*,size_t) ;
 int ctf_decl_push (TYPE_2__*,int *,int ) ;
 int ctf_decl_sprintf (TYPE_2__*,char*,...) ;
 TYPE_3__* ctf_list_next (TYPE_3__*) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_set_errno (int *,scalar_t__) ;
 char* ctf_strptr (int *,int ) ;

__attribute__((used)) static ssize_t
ctf_type_qlname(ctf_file_t *fp, ctf_id_t type, char *buf, size_t len,
    const char *qname)
{
 ctf_decl_t cd;
 ctf_decl_node_t *cdp;
 ctf_decl_prec_t prec, lp, rp;
 int ptr, arr;
 uint_t k;

 if (fp == ((void*)0) && type == CTF_ERR)
  return (-1);

 ctf_decl_init(&cd, buf, len);
 ctf_decl_push(&cd, fp, type);

 if (cd.cd_err != 0) {
  ctf_decl_fini(&cd);
  return (ctf_set_errno(fp, cd.cd_err));
 }
 ptr = cd.cd_order[CTF_PREC_POINTER] > CTF_PREC_POINTER;
 arr = cd.cd_order[CTF_PREC_ARRAY] > CTF_PREC_ARRAY;

 rp = arr ? CTF_PREC_ARRAY : ptr ? CTF_PREC_POINTER : -1;
 lp = ptr ? CTF_PREC_POINTER : arr ? CTF_PREC_ARRAY : -1;

 k = 133;

 for (prec = CTF_PREC_BASE; prec < CTF_PREC_MAX; prec++) {
  for (cdp = ctf_list_next(&cd.cd_nodes[prec]);
      cdp != ((void*)0); cdp = ctf_list_next(cdp)) {

   ctf_file_t *rfp = fp;
   const ctf_type_t *tp =
       ctf_lookup_by_id(&rfp, cdp->cd_type);
   const char *name = ctf_strptr(rfp, tp->ctt_name);

   if (k != 133 && k != 140)
    ctf_decl_sprintf(&cd, " ");

   if (lp == prec) {
    ctf_decl_sprintf(&cd, "(");
    lp = -1;
   }

   switch (cdp->cd_kind) {
   case 134:
   case 137:
   case 130:
    if (qname != ((void*)0))
     ctf_decl_sprintf(&cd, "%s`", qname);
    ctf_decl_sprintf(&cd, "%s", name);
    break;
   case 133:
    ctf_decl_sprintf(&cd, "*");
    break;
   case 140:
    ctf_decl_sprintf(&cd, "[%u]", cdp->cd_n);
    break;
   case 135:
    ctf_decl_sprintf(&cd, "()");
    break;
   case 131:
   case 136:
    ctf_decl_sprintf(&cd, "struct ");
    if (qname != ((void*)0))
     ctf_decl_sprintf(&cd, "%s`", qname);
    ctf_decl_sprintf(&cd, "%s", name);
    break;
   case 129:
    ctf_decl_sprintf(&cd, "union ");
    if (qname != ((void*)0))
     ctf_decl_sprintf(&cd, "%s`", qname);
    ctf_decl_sprintf(&cd, "%s", name);
    break;
   case 138:
    ctf_decl_sprintf(&cd, "enum ");
    if (qname != ((void*)0))
     ctf_decl_sprintf(&cd, "%s`", qname);
    ctf_decl_sprintf(&cd, "%s", name);
    break;
   case 128:
    ctf_decl_sprintf(&cd, "volatile");
    break;
   case 139:
    ctf_decl_sprintf(&cd, "const");
    break;
   case 132:
    ctf_decl_sprintf(&cd, "restrict");
    break;
   }

   k = cdp->cd_kind;
  }

  if (rp == prec)
   ctf_decl_sprintf(&cd, ")");
 }

 if (cd.cd_len >= len)
  (void) ctf_set_errno(fp, ECTF_NAMELEN);

 ctf_decl_fini(&cd);
 return (cd.cd_len);
}
