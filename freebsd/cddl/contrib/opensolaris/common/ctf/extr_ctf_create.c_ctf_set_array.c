
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int ctf_id_t ;
struct TYPE_16__ {int ctf_flags; } ;
typedef TYPE_3__ ctf_file_t ;
struct TYPE_18__ {int ctr_index; int ctr_contents; } ;
struct TYPE_15__ {TYPE_5__ dtu_arr; } ;
struct TYPE_14__ {int ctt_info; } ;
struct TYPE_17__ {TYPE_2__ dtd_u; TYPE_1__ dtd_data; } ;
typedef TYPE_4__ ctf_dtdef_t ;
typedef TYPE_5__ ctf_arinfo_t ;


 scalar_t__ CTF_INFO_KIND (int ) ;
 scalar_t__ CTF_K_ARRAY ;
 int ECTF_BADID ;
 int ECTF_RDONLY ;
 int LCTF_DIRTY ;
 int LCTF_RDWR ;
 TYPE_4__* ctf_dtd_lookup (TYPE_3__*,int ) ;
 int * ctf_lookup_by_id (TYPE_3__**,int ) ;
 int ctf_ref_dec (TYPE_3__*,int ) ;
 int ctf_ref_inc (TYPE_3__*,int ) ;
 int ctf_set_errno (TYPE_3__*,int ) ;

int
ctf_set_array(ctf_file_t *fp, ctf_id_t type, const ctf_arinfo_t *arp)
{
 ctf_file_t *fpd;
 ctf_dtdef_t *dtd = ctf_dtd_lookup(fp, type);

 if (!(fp->ctf_flags & LCTF_RDWR))
  return (ctf_set_errno(fp, ECTF_RDONLY));

 if (dtd == ((void*)0) || CTF_INFO_KIND(dtd->dtd_data.ctt_info) != CTF_K_ARRAY)
  return (ctf_set_errno(fp, ECTF_BADID));

 fpd = fp;
 if (ctf_lookup_by_id(&fpd, arp->ctr_contents) == ((void*)0) &&
     ctf_dtd_lookup(fp, arp->ctr_contents) == ((void*)0))
  return (ctf_set_errno(fp, ECTF_BADID));

 fpd = fp;
 if (ctf_lookup_by_id(&fpd, arp->ctr_index) == ((void*)0) &&
     ctf_dtd_lookup(fp, arp->ctr_index) == ((void*)0))
  return (ctf_set_errno(fp, ECTF_BADID));

 ctf_ref_dec(fp, dtd->dtd_u.dtu_arr.ctr_contents);
 ctf_ref_dec(fp, dtd->dtd_u.dtu_arr.ctr_index);
 fp->ctf_flags |= LCTF_DIRTY;
 dtd->dtd_u.dtu_arr = *arp;
 ctf_ref_inc(fp, arp->ctr_contents);
 ctf_ref_inc(fp, arp->ctr_index);

 return (0);
}
