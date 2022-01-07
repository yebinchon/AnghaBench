
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
typedef int ctf_encoding_t ;


 scalar_t__ CTF_K_INTEGER ;
 scalar_t__ IS_VOID (int ) ;
 scalar_t__ ctf_type_encoding (int *,int ,int *) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ dt_node_is_dynamic (TYPE_1__ const*) ;
 scalar_t__ dt_node_is_stack (TYPE_1__ const*) ;
 scalar_t__ dt_node_is_symaddr (TYPE_1__ const*) ;
 scalar_t__ dt_node_is_usymaddr (TYPE_1__ const*) ;

int
dt_node_is_void(const dt_node_t *dnp)
{
 ctf_file_t *fp = dnp->dn_ctfp;
 ctf_encoding_t e;
 ctf_id_t type;

 if (dt_node_is_dynamic(dnp))
  return (0);

 if (dt_node_is_stack(dnp))
  return (0);

 if (dt_node_is_symaddr(dnp) || dt_node_is_usymaddr(dnp))
  return (0);

 type = ctf_type_resolve(fp, dnp->dn_type);

 return (ctf_type_kind(fp, type) == CTF_K_INTEGER &&
     ctf_type_encoding(fp, type, &e) == 0 && IS_VOID(e));
}
