
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_5__ {int dn_flags; int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;
struct TYPE_6__ {int ctr_contents; } ;
typedef TYPE_2__ ctf_arinfo_t ;


 int CTF_ERR ;
 scalar_t__ CTF_K_ARRAY ;
 scalar_t__ CTF_K_POINTER ;
 int DT_NF_COOKED ;
 scalar_t__ IS_CHAR (int ) ;
 int assert (int) ;
 scalar_t__ ctf_array_info (int *,int ,TYPE_2__*) ;
 scalar_t__ ctf_type_encoding (int *,int ,int *) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;

int
dt_node_is_strcompat(const dt_node_t *dnp)
{
 ctf_file_t *fp = dnp->dn_ctfp;
 ctf_encoding_t e;
 ctf_arinfo_t r;
 ctf_id_t base;
 uint_t kind;

 assert(dnp->dn_flags & DT_NF_COOKED);

 base = ctf_type_resolve(fp, dnp->dn_type);
 kind = ctf_type_kind(fp, base);

 if (kind == CTF_K_POINTER &&
     (base = ctf_type_reference(fp, base)) != CTF_ERR &&
     (base = ctf_type_resolve(fp, base)) != CTF_ERR &&
     ctf_type_encoding(fp, base, &e) == 0 && IS_CHAR(e))
  return (1);

 if (kind == CTF_K_ARRAY && ctf_array_info(fp, base, &r) == 0 &&
     (base = ctf_type_resolve(fp, r.ctr_contents)) != CTF_ERR &&
     ctf_type_encoding(fp, base, &e) == 0 && IS_CHAR(e))
  return (1);

 return (0);
}
