
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct snmp_node {int oid; } ;


 int asn_compare_oid (int *,int *) ;

__attribute__((used)) static int
compare_node(const void *v1, const void *v2)
{
 const struct snmp_node *n1 = v1;
 const struct snmp_node *n2 = v2;

 return (asn_compare_oid(&n1->oid, &n2->oid));
}
