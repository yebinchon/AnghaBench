
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ ssize_t ;
struct TYPE_7__ {int ctt_info; } ;
typedef TYPE_1__ ctf_type_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_8__ {int cta_nelems; int cta_index; int cta_contents; } ;
typedef TYPE_2__ ctf_array_t ;
struct TYPE_9__ {int ctr_nelems; int ctr_index; int ctr_contents; } ;
typedef TYPE_3__ ctf_arinfo_t ;


 int CTF_ERR ;
 scalar_t__ CTF_K_ARRAY ;
 int ECTF_NOTARRAY ;
 scalar_t__ LCTF_INFO_KIND (int *,int ) ;
 int ctf_get_ctt_size (int *,TYPE_1__ const*,int *,scalar_t__*) ;
 TYPE_1__* ctf_lookup_by_id (int **,int ) ;
 int ctf_set_errno (int *,int ) ;

int
ctf_array_info(ctf_file_t *fp, ctf_id_t type, ctf_arinfo_t *arp)
{
 ctf_file_t *ofp = fp;
 const ctf_type_t *tp;
 const ctf_array_t *ap;
 ssize_t increment;

 if ((tp = ctf_lookup_by_id(&fp, type)) == ((void*)0))
  return (CTF_ERR);

 if (LCTF_INFO_KIND(fp, tp->ctt_info) != CTF_K_ARRAY)
  return (ctf_set_errno(ofp, ECTF_NOTARRAY));

 (void) ctf_get_ctt_size(fp, tp, ((void*)0), &increment);

 ap = (const ctf_array_t *)((uintptr_t)tp + increment);
 arp->ctr_contents = ap->cta_contents;
 arp->ctr_index = ap->cta_index;
 arp->ctr_nelems = ap->cta_nelems;

 return (0);
}
