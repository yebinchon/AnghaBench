
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int dn_flags; int dn_type; int dn_ctfp; } ;
typedef TYPE_1__ dt_node_t ;


 int DT_NF_COOKED ;
 int DT_NF_LVALUE ;
 int assert (int) ;

void
dt_node_type_propagate(const dt_node_t *src, dt_node_t *dst)
{
 assert(src->dn_flags & DT_NF_COOKED);
 dst->dn_flags = src->dn_flags & ~DT_NF_LVALUE;
 dst->dn_ctfp = src->dn_ctfp;
 dst->dn_type = src->dn_type;
}
