
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
typedef scalar_t__ ssize_t ;
struct TYPE_5__ {int ctt_info; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_6__ {int cte_value; int cte_name; } ;
typedef TYPE_2__ ctf_enum_t ;


 int CTF_ERR ;
 scalar_t__ CTF_K_ENUM ;
 int ECTF_NOENUMNAM ;
 int ECTF_NOTENUM ;
 scalar_t__ LCTF_INFO_KIND (int *,int ) ;
 scalar_t__ LCTF_INFO_VLEN (int *,int ) ;
 int ctf_get_ctt_size (int *,TYPE_1__ const*,int *,scalar_t__*) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_set_errno (int *,int ) ;
 char const* ctf_strptr (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;

const char *
ctf_enum_name(ctf_file_t *fp, ctf_id_t type, int value)
{
 ctf_file_t *ofp = fp;
 const ctf_type_t *tp;
 const ctf_enum_t *ep;
 ssize_t increment;
 uint_t n;

 if ((type = ctf_type_resolve(fp, type)) == CTF_ERR)
  return (((void*)0));

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (((void*)0));

 if (LCTF_INFO_KIND(fp, tp->ctt_info) != CTF_K_ENUM) {
  (void) ctf_set_errno(ofp, ECTF_NOTENUM);
  return (((void*)0));
 }

 (void) ctf_get_ctt_size(fp, tp, ((void*)0), &increment);

 ep = (const ctf_enum_t *)((uintptr_t)tp + increment);

 for (n = LCTF_INFO_VLEN(fp, tp->ctt_info); n != 0; n--, ep++) {
  if (ep->cte_value == value)
   return (ctf_strptr(fp, ep->cte_name));
 }

 (void) ctf_set_errno(ofp, ECTF_NOENUMNAM);
 return (((void*)0));
}
