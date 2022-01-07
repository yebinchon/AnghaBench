
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_3__ {int dn_flags; int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;


 scalar_t__ CTF_K_FUNCTION ;
 scalar_t__ CTF_K_INTEGER ;
 scalar_t__ CTF_K_POINTER ;
 int DT_NF_COOKED ;
 scalar_t__ IS_VOID (int ) ;
 int assert (int) ;
 scalar_t__ ctf_type_encoding (int *,int ,int *) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_reference (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;

int
dt_node_is_vfptr(const dt_node_t *dnp)
{
 ctf_file_t *fp = dnp->dn_ctfp;
 ctf_encoding_t e;
 ctf_id_t type;
 uint_t kind;

 assert(dnp->dn_flags & DT_NF_COOKED);

 type = ctf_type_resolve(fp, dnp->dn_type);
 if (ctf_type_kind(fp, type) != CTF_K_POINTER)
  return (0);

 type = ctf_type_resolve(fp, ctf_type_reference(fp, type));
 kind = ctf_type_kind(fp, type);

 return (kind == CTF_K_FUNCTION || (kind == CTF_K_INTEGER &&
     ctf_type_encoding(fp, type, &e) == 0 && IS_VOID(e)));
}
