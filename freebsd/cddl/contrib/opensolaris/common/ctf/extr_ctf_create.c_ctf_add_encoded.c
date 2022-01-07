
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
struct TYPE_9__ {int cte_bits; } ;
typedef TYPE_3__ ctf_encoding_t ;
struct TYPE_7__ {TYPE_3__ dtu_enc; } ;
struct TYPE_8__ {int ctt_size; int ctt_info; } ;
struct TYPE_10__ {TYPE_1__ dtd_u; TYPE_2__ dtd_data; } ;
typedef TYPE_4__ ctf_dtdef_t ;


 int CTF_ERR ;
 int CTF_TYPE_INFO (int ,int ,int ) ;
 int EINVAL ;
 int NBBY ;
 int P2ROUNDUP (int ,int) ;
 int clp2 (int) ;
 int ctf_add_generic (int *,int ,char const*,TYPE_4__**) ;
 int ctf_set_errno (int *,int ) ;

__attribute__((used)) static ctf_id_t
ctf_add_encoded(ctf_file_t *fp, uint_t flag,
    const char *name, const ctf_encoding_t *ep, uint_t kind)
{
 ctf_dtdef_t *dtd;
 ctf_id_t type;

 if (ep == ((void*)0))
  return (ctf_set_errno(fp, EINVAL));

 if ((type = ctf_add_generic(fp, flag, name, &dtd)) == CTF_ERR)
  return (CTF_ERR);

 dtd->dtd_data.ctt_info = CTF_TYPE_INFO(kind, flag, 0);
 dtd->dtd_data.ctt_size = clp2(P2ROUNDUP(ep->cte_bits, NBBY) / NBBY);
 dtd->dtd_u.dtu_enc = *ep;

 return (type);
}
