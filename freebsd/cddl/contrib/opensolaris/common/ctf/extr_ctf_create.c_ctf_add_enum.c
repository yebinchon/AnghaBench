
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_5__ ;
typedef struct TYPE_17__ TYPE_4__ ;
typedef struct TYPE_16__ TYPE_3__ ;
typedef struct TYPE_15__ TYPE_2__ ;
typedef struct TYPE_14__ TYPE_1__ ;


typedef int uint_t ;
typedef int ctf_id_t ;
struct TYPE_16__ {int h_type; } ;
typedef TYPE_3__ ctf_helem_t ;
typedef int ctf_hash_t ;
struct TYPE_17__ {TYPE_2__* ctf_dmodel; int ctf_enums; } ;
typedef TYPE_4__ ctf_file_t ;
struct TYPE_14__ {int ctt_size; int ctt_info; } ;
struct TYPE_18__ {TYPE_1__ dtd_data; } ;
typedef TYPE_5__ ctf_dtdef_t ;
struct TYPE_15__ {int ctd_int; } ;


 int CTF_ERR ;
 int CTF_K_ENUM ;
 scalar_t__ CTF_K_FORWARD ;
 int CTF_TYPE_INFO (int ,int ,int ) ;
 int ctf_add_generic (TYPE_4__*,int ,char const*,TYPE_5__**) ;
 TYPE_5__* ctf_dtd_lookup (TYPE_4__*,int ) ;
 TYPE_3__* ctf_hash_lookup (int *,TYPE_4__*,char const*,int ) ;
 scalar_t__ ctf_type_kind (TYPE_4__*,int ) ;
 int strlen (char const*) ;

ctf_id_t
ctf_add_enum(ctf_file_t *fp, uint_t flag, const char *name)
{
 ctf_hash_t *hp = &fp->ctf_enums;
 ctf_helem_t *hep = ((void*)0);
 ctf_dtdef_t *dtd;
 ctf_id_t type;

 if (name != ((void*)0))
  hep = ctf_hash_lookup(hp, fp, name, strlen(name));

 if (hep != ((void*)0) && ctf_type_kind(fp, hep->h_type) == CTF_K_FORWARD)
  dtd = ctf_dtd_lookup(fp, type = hep->h_type);
 else if ((type = ctf_add_generic(fp, flag, name, &dtd)) == CTF_ERR)
  return (CTF_ERR);

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(CTF_K_ENUM, flag, 0);
 dtd->dtd_data.ctt_size = fp->ctf_dmodel->ctd_int;

 return (type);
}
