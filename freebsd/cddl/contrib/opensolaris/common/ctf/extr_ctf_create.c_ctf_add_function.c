
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ushort_t ;
typedef int uint_t ;
typedef scalar_t__ ctf_id_t ;
struct TYPE_9__ {int ctc_flags; int ctc_argc; scalar_t__ const ctc_return; } ;
typedef TYPE_3__ ctf_funcinfo_t ;
typedef int ctf_file_t ;
struct TYPE_8__ {scalar_t__* dtu_argv; } ;
struct TYPE_7__ {scalar_t__ ctt_type; int ctt_info; } ;
struct TYPE_10__ {TYPE_2__ dtd_u; TYPE_1__ dtd_data; } ;
typedef TYPE_4__ ctf_dtdef_t ;


 scalar_t__ CTF_ERR ;
 int CTF_FUNC_VARARG ;
 int CTF_K_FUNCTION ;
 int CTF_MAX_VLEN ;
 int CTF_TYPE_INFO (int ,int,int) ;
 int EAGAIN ;
 int ECTF_BADID ;
 int EINVAL ;
 int EOVERFLOW ;
 int bcopy (scalar_t__ const*,scalar_t__*,int) ;
 scalar_t__ ctf_add_generic (int *,int,int *,TYPE_4__**) ;
 scalar_t__* ctf_alloc (int) ;
 int * ctf_dtd_lookup (int *,scalar_t__ const) ;
 int ctf_free (scalar_t__*,int) ;
 int * ctf_lookup_by_id (int **,scalar_t__ const) ;
 int ctf_ref_inc (int *,scalar_t__ const) ;
 scalar_t__ ctf_set_errno (int *,int ) ;

ctf_id_t
ctf_add_function(ctf_file_t *fp, uint_t flag,
    const ctf_funcinfo_t *ctc, const ctf_id_t *argv)
{
 ctf_dtdef_t *dtd;
 ctf_id_t type;
 uint_t vlen;
 int i;
 ctf_id_t *vdat = ((void*)0);
 ctf_file_t *fpd;

 if (ctc == ((void*)0) || (ctc->ctc_flags & ~CTF_FUNC_VARARG) != 0 ||
     (ctc->ctc_argc != 0 && argv == ((void*)0)))
  return (ctf_set_errno(fp, EINVAL));

 vlen = ctc->ctc_argc;
 if (ctc->ctc_flags & CTF_FUNC_VARARG)
  vlen++;

 if (vlen > CTF_MAX_VLEN)
  return (ctf_set_errno(fp, EOVERFLOW));

 fpd = fp;
 if (ctf_lookup_by_id(&fpd, ctc->ctc_return) == ((void*)0) &&
     ctf_dtd_lookup(fp, ctc->ctc_return) == ((void*)0))
  return (ctf_set_errno(fp, ECTF_BADID));

 for (i = 0; i < ctc->ctc_argc; i++) {
  fpd = fp;
  if (ctf_lookup_by_id(&fpd, argv[i]) == ((void*)0) &&
      ctf_dtd_lookup(fp, argv[i]) == ((void*)0))
   return (ctf_set_errno(fp, ECTF_BADID));
 }

 if (vlen != 0 && (vdat = ctf_alloc(sizeof (ctf_id_t) * vlen)) == ((void*)0))
  return (ctf_set_errno(fp, EAGAIN));

 if ((type = ctf_add_generic(fp, flag, ((void*)0), &dtd)) == CTF_ERR) {
  ctf_free(vdat, sizeof (ctf_id_t) * vlen);
  return (CTF_ERR);
 }

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(CTF_K_FUNCTION, flag, vlen);
 dtd->dtd_data.ctt_type = (ushort_t)ctc->ctc_return;

 ctf_ref_inc(fp, ctc->ctc_return);
 for (i = 0; i < ctc->ctc_argc; i++)
  ctf_ref_inc(fp, argv[i]);

 bcopy(argv, vdat, sizeof (ctf_id_t) * ctc->ctc_argc);
 if (ctc->ctc_flags & CTF_FUNC_VARARG)
  vdat[vlen - 1] = 0;
 dtd->dtd_u.dtu_argv = vdat;

 return (type);
}
