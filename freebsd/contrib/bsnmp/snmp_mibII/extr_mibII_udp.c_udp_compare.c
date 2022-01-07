
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct udp_index {int index; } ;


 int asn_compare_oid (int *,int *) ;

__attribute__((used)) static int
udp_compare(const void *p1, const void *p2)
{
 const struct udp_index *t1 = p1;
 const struct udp_index *t2 = p2;

 return (asn_compare_oid(&t1->index, &t2->index));
}
