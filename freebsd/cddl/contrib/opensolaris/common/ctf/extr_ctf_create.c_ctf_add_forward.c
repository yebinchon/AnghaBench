
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int uint_t ;
typedef int ctf_id_t ;
struct TYPE_12__ {int h_type; } ;
typedef TYPE_2__ ctf_helem_t ;
typedef int ctf_hash_t ;
struct TYPE_13__ {int ctf_enums; int ctf_unions; int ctf_structs; } ;
typedef TYPE_3__ ctf_file_t ;
struct TYPE_11__ {int ctt_type; int ctt_info; } ;
struct TYPE_14__ {TYPE_1__ dtd_data; } ;
typedef TYPE_4__ ctf_dtdef_t ;


 int CTF_ERR ;

 int CTF_K_FORWARD ;


 int CTF_TYPE_INFO (int ,int,int ) ;
 int ECTF_NOTSUE ;
 int ctf_add_generic (TYPE_3__*,int,char const*,TYPE_4__**) ;
 TYPE_2__* ctf_hash_lookup (int *,TYPE_3__*,char const*,int ) ;
 int ctf_set_errno (TYPE_3__*,int ) ;
 int strlen (char const*) ;

ctf_id_t
ctf_add_forward(ctf_file_t *fp, uint_t flag, const char *name, uint_t kind)
{
 ctf_hash_t *hp;
 ctf_helem_t *hep;
 ctf_dtdef_t *dtd;
 ctf_id_t type;

 switch (kind) {
 case 129:
  hp = &fp->ctf_structs;
  break;
 case 128:
  hp = &fp->ctf_unions;
  break;
 case 130:
  hp = &fp->ctf_enums;
  break;
 default:
  return (ctf_set_errno(fp, ECTF_NOTSUE));
 }





 if (name != ((void*)0) && (hep = ctf_hash_lookup(hp,
     fp, name, strlen(name))) != ((void*)0))
  return (hep->h_type);

 if ((type = ctf_add_generic(fp, flag, name, &dtd)) == CTF_ERR)
  return (CTF_ERR);

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(CTF_K_FORWARD, flag, 0);
 dtd->dtd_data.ctt_type = kind;

 return (type);
}
