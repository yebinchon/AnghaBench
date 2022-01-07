
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ int64_t ;
struct TYPE_3__ {scalar_t__ dn_kind; scalar_t__ dn_value; int dn_flags; } ;
typedef TYPE_1__ dt_node_t ;


 int DT_NF_SIGNED ;
 scalar_t__ DT_NODE_INT ;

int
dt_node_is_posconst(const dt_node_t *dnp)
{
 return (dnp->dn_kind == DT_NODE_INT && dnp->dn_value != 0 && (
     (dnp->dn_flags & DT_NF_SIGNED) == 0 || (int64_t)dnp->dn_value > 0));
}
