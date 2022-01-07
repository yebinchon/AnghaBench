
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {scalar_t__ len; } ;
struct snmp_value {TYPE_1__ var; } ;
struct snmp_node {scalar_t__ type; TYPE_1__ oid; } ;


 int FIND ;
 scalar_t__ SNMP_NODE_LEAF ;
 scalar_t__ TR (int ) ;
 scalar_t__ asn_compare_oid (TYPE_1__*,TYPE_1__*) ;
 scalar_t__ asn_is_suboid (TYPE_1__*,TYPE_1__*) ;
 int asn_oid2str_r (TYPE_1__*,int ) ;
 int oidbuf ;
 int snmp_debug (char*,...) ;
 struct snmp_node* tree ;
 int tree_size ;

__attribute__((used)) static struct snmp_node *
next_node(const struct snmp_value *value, int *pnext)
{
 struct snmp_node *tp;

 if (TR(FIND))
  snmp_debug("next: searching %s",
      asn_oid2str_r(&value->var, oidbuf));

 *pnext = 0;
 for (tp = tree; tp < tree + tree_size; tp++) {
  if (asn_is_suboid(&tp->oid, &value->var)) {

   if (tp->type == SNMP_NODE_LEAF) {
    if (tp->oid.len == value->var.len) {

     if (TR(FIND))
      snmp_debug("next: found scalar %s",
          asn_oid2str_r(&tp->oid, oidbuf));
     return (tp);
    }

   } else {
    if (TR(FIND))
     snmp_debug("next: found column %s",
         asn_oid2str_r(&tp->oid, oidbuf));
    return (tp);
   }
  } else if (asn_is_suboid(&value->var, &tp->oid) ||
      asn_compare_oid(&tp->oid, &value->var) >= 0) {
   if (TR(FIND))
    snmp_debug("next: found %s",
        asn_oid2str_r(&tp->oid, oidbuf));
   *pnext = 1;
   return (tp);
  }
 }

 if (TR(FIND))
  snmp_debug("next: failed");

 return (((void*)0));
}
