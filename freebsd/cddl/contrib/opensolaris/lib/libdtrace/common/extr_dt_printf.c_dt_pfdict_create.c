
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;


typedef int uint_t ;
struct TYPE_15__ {int dtt_type; int * dtt_ctfp; } ;
typedef TYPE_1__ dtrace_typeinfo_t ;
struct TYPE_16__ {TYPE_3__* dt_pfdict; } ;
typedef TYPE_2__ dtrace_hdl_t ;
struct TYPE_17__ {int pdi_nbuckets; TYPE_4__** pdi_buckets; } ;
typedef TYPE_3__ dt_pfdict_t ;
struct TYPE_18__ {int * pfc_name; int * pfc_tstr; int * pfc_ofmt; int * pfc_print; int * pfc_check; int pfc_dtype; int pfc_ctype; int * pfc_dctfp; int * pfc_cctfp; struct TYPE_18__* pfc_next; } ;
typedef TYPE_4__ dt_pfconv_t ;


 int CTF_ERR ;
 int DTRACE_OBJ_CDEFS ;
 int DTRACE_OBJ_DDEFS ;
 int EDT_BADCONV ;
 int EDT_NOCONV ;
 int EDT_NOMEM ;
 TYPE_4__* _dtrace_conversions ;
 int _dtrace_strbuckets ;
 int bcopy (TYPE_4__ const*,TYPE_4__*,int) ;
 int bzero (TYPE_4__**,int) ;
 int dt_dprintf (char*,int *) ;
 int dt_pfdict_destroy (TYPE_2__*) ;
 int dt_set_errno (TYPE_2__*,int ) ;
 int dt_strtab_hash (int *,int *) ;
 scalar_t__ dtrace_lookup_by_type (TYPE_2__*,int ,int *,TYPE_1__*) ;
 int free (TYPE_3__*) ;
 void* malloc (int) ;
 int pfcheck_type ;

int
dt_pfdict_create(dtrace_hdl_t *dtp)
{
 uint_t n = _dtrace_strbuckets;
 const dt_pfconv_t *pfd;
 dt_pfdict_t *pdi;

 if ((pdi = malloc(sizeof (dt_pfdict_t))) == ((void*)0) ||
     (pdi->pdi_buckets = malloc(sizeof (dt_pfconv_t *) * n)) == ((void*)0)) {
  free(pdi);
  return (dt_set_errno(dtp, EDT_NOMEM));
 }

 dtp->dt_pfdict = pdi;
 bzero(pdi->pdi_buckets, sizeof (dt_pfconv_t *) * n);
 pdi->pdi_nbuckets = n;

 for (pfd = _dtrace_conversions; pfd->pfc_name != ((void*)0); pfd++) {
  dtrace_typeinfo_t dtt;
  dt_pfconv_t *pfc;
  uint_t h;

  if ((pfc = malloc(sizeof (dt_pfconv_t))) == ((void*)0)) {
   dt_pfdict_destroy(dtp);
   return (dt_set_errno(dtp, EDT_NOMEM));
  }

  bcopy(pfd, pfc, sizeof (dt_pfconv_t));
  h = dt_strtab_hash(pfc->pfc_name, ((void*)0)) % n;
  pfc->pfc_next = pdi->pdi_buckets[h];
  pdi->pdi_buckets[h] = pfc;

  dtt.dtt_ctfp = ((void*)0);
  dtt.dtt_type = CTF_ERR;






  if (pfc->pfc_check == &pfcheck_type && dtrace_lookup_by_type(
      dtp, DTRACE_OBJ_DDEFS, pfc->pfc_tstr, &dtt) != 0) {
   dt_pfdict_destroy(dtp);
   return (dt_set_errno(dtp, EDT_NOCONV));
  }

  pfc->pfc_dctfp = dtt.dtt_ctfp;
  pfc->pfc_dtype = dtt.dtt_type;






  if (pfc->pfc_check == &pfcheck_type && dtrace_lookup_by_type(
      dtp, DTRACE_OBJ_CDEFS, pfc->pfc_tstr, &dtt) == 0) {
   pfc->pfc_cctfp = dtt.dtt_ctfp;
   pfc->pfc_ctype = dtt.dtt_type;
  } else {
   pfc->pfc_cctfp = pfc->pfc_dctfp;
   pfc->pfc_ctype = pfc->pfc_dtype;
  }

  if (pfc->pfc_check == ((void*)0) || pfc->pfc_print == ((void*)0) ||
      pfc->pfc_ofmt == ((void*)0) || pfc->pfc_tstr == ((void*)0)) {
   dt_pfdict_destroy(dtp);
   return (dt_set_errno(dtp, EDT_BADCONV));
  }

  dt_dprintf("loaded printf conversion %%%s\n", pfc->pfc_name);
 }

 return (0);
}
