
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_4__ {int dn_flags; int dn_type; int * dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_file_t ;


 scalar_t__ CTF_K_ARRAY ;
 scalar_t__ CTF_K_POINTER ;
 int DT_NF_COOKED ;
 int assert (int) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;
 scalar_t__ dt_node_is_string (TYPE_1__ const*) ;

int
dt_node_is_pointer(const dt_node_t *dnp)
{
 ctf_file_t *fp = dnp->dn_ctfp;
 uint_t kind;

 assert(dnp->dn_flags & DT_NF_COOKED);

 if (dt_node_is_string(dnp))
  return (0);

 kind = ctf_type_kind(fp, ctf_type_resolve(fp, dnp->dn_type));
 return (kind == CTF_K_POINTER || kind == CTF_K_ARRAY);
}
