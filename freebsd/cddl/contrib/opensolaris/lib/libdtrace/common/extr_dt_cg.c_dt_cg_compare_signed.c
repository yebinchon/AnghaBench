
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int dn_flags; int dn_right; int dn_left; } ;
typedef TYPE_1__ dt_node_t ;
typedef int dn ;


 int DT_NF_SIGNED ;
 int bzero (TYPE_1__*,int) ;
 int dt_node_is_arith (int ) ;
 scalar_t__ dt_node_is_string (int ) ;
 int dt_node_promote (int ,int ,TYPE_1__*) ;

__attribute__((used)) static int
dt_cg_compare_signed(dt_node_t *dnp)
{
 dt_node_t dn;

 if (dt_node_is_string(dnp->dn_left) ||
     dt_node_is_string(dnp->dn_right))
  return (1);
 else if (!dt_node_is_arith(dnp->dn_left) ||
     !dt_node_is_arith(dnp->dn_right))
  return (0);

 bzero(&dn, sizeof (dn));
 dt_node_promote(dnp->dn_left, dnp->dn_right, &dn);
 return (dn.dn_flags & DT_NF_SIGNED);
}
