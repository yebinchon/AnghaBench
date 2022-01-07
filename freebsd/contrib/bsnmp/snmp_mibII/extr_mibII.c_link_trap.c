
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int integer; } ;
struct TYPE_4__ {int len; int * subs; } ;
struct snmp_value {TYPE_1__ v; int syntax; TYPE_2__ var; } ;
struct mibif {int index; } ;


 int SNMP_SYNTAX_INTEGER ;
 TYPE_2__ oid_ifIndex ;
 int oid_linkDown ;
 int oid_linkUp ;
 int snmp_send_trap (int *,struct snmp_value*,struct snmp_value*) ;

__attribute__((used)) static void
link_trap(struct mibif *ifp, int up)
{
 struct snmp_value ifindex;

 ifindex.var = oid_ifIndex;
 ifindex.var.subs[ifindex.var.len++] = ifp->index;
 ifindex.syntax = SNMP_SYNTAX_INTEGER;
 ifindex.v.integer = ifp->index;

 snmp_send_trap(up ? &oid_linkUp : &oid_linkDown, &ifindex,
     (struct snmp_value *)((void*)0));
}
