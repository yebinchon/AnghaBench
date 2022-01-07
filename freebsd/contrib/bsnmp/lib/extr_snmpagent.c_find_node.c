
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_6__ {int len; scalar_t__* subs; } ;
struct snmp_value {TYPE_1__ var; } ;
struct TYPE_7__ {int len; } ;
struct snmp_node {scalar_t__ type; TYPE_2__ oid; } ;
typedef enum snmp_syntax { ____Placeholder_snmp_syntax } snmp_syntax ;


 int FIND ;
 scalar_t__ SNMP_NODE_LEAF ;
 int SNMP_SYNTAX_NOSUCHINSTANCE ;
 int SNMP_SYNTAX_NOSUCHOBJECT ;
 scalar_t__ TR (int ) ;
 scalar_t__ asn_compare_oid (TYPE_2__*,TYPE_1__*) ;
 scalar_t__ asn_is_suboid (TYPE_2__*,TYPE_1__*) ;
 int asn_oid2str_r (TYPE_1__*,int ) ;
 int oidbuf ;
 int snmp_debug (char*,...) ;
 struct snmp_node* tree ;
 int tree_size ;

__attribute__((used)) static struct snmp_node *
find_node(const struct snmp_value *value, enum snmp_syntax *errp)
{
 struct snmp_node *tp;

 if (TR(FIND))
  snmp_debug("find: searching %s",
      asn_oid2str_r(&value->var, oidbuf));






 for (tp = tree; tp < tree + tree_size; tp++) {
  if (asn_is_suboid(&tp->oid, &value->var))
   goto found;
  if (asn_compare_oid(&tp->oid, &value->var) >= 0)
   break;
 }

 if (TR(FIND))
  snmp_debug("find: no match");
 *errp = SNMP_SYNTAX_NOSUCHOBJECT;
 return (((void*)0));

  found:

 if (tp->type == SNMP_NODE_LEAF &&
     (value->var.len != tp->oid.len + 1 ||
      value->var.subs[tp->oid.len] != 0)) {
  if (TR(FIND))
   snmp_debug("find: bad leaf index");
  *errp = SNMP_SYNTAX_NOSUCHINSTANCE;
  return (((void*)0));
 }
 if (TR(FIND))
  snmp_debug("find: found %s",
      asn_oid2str_r(&value->var, oidbuf));
 return (tp);
}
