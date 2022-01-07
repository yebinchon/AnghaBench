
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint_t ;
struct TYPE_5__ {int dn_flags; int * dn_ctfp; int dn_type; } ;
typedef TYPE_1__ dt_node_t ;
typedef int ctf_id_t ;
typedef int ctf_file_t ;
struct TYPE_6__ {scalar_t__ cte_format; } ;
typedef TYPE_2__ ctf_encoding_t ;


 scalar_t__ CTF_FP_DOUBLE ;
 scalar_t__ CTF_FP_LDOUBLE ;
 scalar_t__ CTF_FP_SINGLE ;
 scalar_t__ CTF_K_FLOAT ;
 int DT_NF_COOKED ;
 int assert (int) ;
 scalar_t__ ctf_type_encoding (int *,int ,TYPE_2__*) ;
 scalar_t__ ctf_type_kind (int *,int ) ;
 int ctf_type_resolve (int *,int ) ;

int
dt_node_is_float(const dt_node_t *dnp)
{
 ctf_file_t *fp = dnp->dn_ctfp;
 ctf_encoding_t e;
 ctf_id_t type;
 uint_t kind;

 assert(dnp->dn_flags & DT_NF_COOKED);

 type = ctf_type_resolve(fp, dnp->dn_type);
 kind = ctf_type_kind(fp, type);

 return (kind == CTF_K_FLOAT &&
     ctf_type_encoding(dnp->dn_ctfp, type, &e) == 0 && (
     e.cte_format == CTF_FP_SINGLE || e.cte_format == CTF_FP_DOUBLE ||
     e.cte_format == CTF_FP_LDOUBLE));
}
