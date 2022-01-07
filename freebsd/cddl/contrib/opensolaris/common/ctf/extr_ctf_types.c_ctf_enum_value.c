
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
 int ctf_get_ctt_size (int *,TYPE_1__ const*,scalar_t__*,scalar_t__*) ;
 TYPE_1__* ctf_lookup_by_id (int **,int) ;
 int ctf_set_errno (int *,int ) ;
 int ctf_strptr (int *,int ) ;
 int ctf_type_resolve (int *,int) ;
 scalar_t__ strcmp (int ,char const*) ;

int
ctf_enum_value(ctf_file_t *fp, ctf_id_t type, const char *name, int *valp)
{
 ctf_file_t *ofp = fp;
 const ctf_type_t *tp;
 const ctf_enum_t *ep;
 ssize_t size, increment;
 uint_t n;

 if ((type = ctf_type_resolve(fp, type)) == CTF_ERR)
  return (CTF_ERR);

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (CTF_ERR);

 if (LCTF_INFO_KIND(fp, tp->ctt_info) != CTF_K_ENUM) {
  (void) ctf_set_errno(ofp, ECTF_NOTENUM);
  return (CTF_ERR);
 }

 (void) ctf_get_ctt_size(fp, tp, &size, &increment);

 ep = (const ctf_enum_t *)((uintptr_t)tp + increment);

 for (n = LCTF_INFO_VLEN(fp, tp->ctt_info); n != 0; n--, ep++) {
  if (strcmp(ctf_strptr(fp, ep->cte_name), name) == 0) {
   if (valp != ((void*)0))
    *valp = ep->cte_value;
   return (0);
  }
 }

 (void) ctf_set_errno(ofp, ECTF_NOENUMNAM);
 return (CTF_ERR);
}
