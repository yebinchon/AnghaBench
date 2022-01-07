
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_10__ {int ctr_index; int ctr_contents; } ;
struct TYPE_8__ {TYPE_4__ dtu_arr; } ;
struct TYPE_7__ {scalar_t__ ctt_size; int ctt_info; } ;
struct TYPE_9__ {TYPE_2__ dtd_u; TYPE_1__ dtd_data; } ;
typedef TYPE_3__ ctf_dtdef_t ;
typedef TYPE_4__ ctf_arinfo_t ;


 int CTF_ERR ;
 int CTF_K_ARRAY ;
 int CTF_TYPE_INFO (int ,int ,int ) ;
 int ECTF_BADID ;
 int EINVAL ;
 int ctf_add_generic (int *,int ,int *,TYPE_3__**) ;
 int * ctf_dtd_lookup (int *,int ) ;
 int * ctf_lookup_by_id (int **,int ) ;
 int ctf_ref_inc (int *,int ) ;
 int ctf_set_errno (int *,int ) ;

ctf_id_t
ctf_add_array(ctf_file_t *fp, uint_t flag, const ctf_arinfo_t *arp)
{
 ctf_dtdef_t *dtd;
 ctf_id_t type;
 ctf_file_t *fpd;

 if (arp == ((void*)0))
  return (ctf_set_errno(fp, EINVAL));

 fpd = fp;
 if (ctf_lookup_by_id(&fpd, arp->ctr_contents) == ((void*)0) &&
     ctf_dtd_lookup(fp, arp->ctr_contents) == ((void*)0))
  return (ctf_set_errno(fp, ECTF_BADID));

 fpd = fp;
 if (ctf_lookup_by_id(&fpd, arp->ctr_index) == ((void*)0) &&
     ctf_dtd_lookup(fp, arp->ctr_index) == ((void*)0))
  return (ctf_set_errno(fp, ECTF_BADID));

 if ((type = ctf_add_generic(fp, flag, ((void*)0), &dtd)) == CTF_ERR)
  return (CTF_ERR);

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(CTF_K_ARRAY, flag, 0);
 dtd->dtd_data.ctt_size = 0;
 dtd->dtd_u.dtu_arr = *arp;
 ctf_ref_inc(fp, arp->ctr_contents);
 ctf_ref_inc(fp, arp->ctr_index);

 return (type);
}
