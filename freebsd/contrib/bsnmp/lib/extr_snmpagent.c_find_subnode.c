
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_value {int var; } ;
struct snmp_node {int oid; } ;


 scalar_t__ asn_is_suboid (int *,int *) ;
 struct snmp_node* tree ;
 int tree_size ;

__attribute__((used)) static struct snmp_node *
find_subnode(const struct snmp_value *value)
{
 struct snmp_node *tp;

 for (tp = tree; tp < tree + tree_size; tp++) {
  if (asn_is_suboid(&value->var, &tp->oid))
   return (tp);
 }
 return (((void*)0));
}
