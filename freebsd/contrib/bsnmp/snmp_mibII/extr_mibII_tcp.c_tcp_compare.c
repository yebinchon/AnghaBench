
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tcp_index {int index; } ;


 int asn_compare_oid (int *,int *) ;

__attribute__((used)) static int
tcp_compare(const void *p1, const void *p2)
{
 const struct tcp_index *t1 = p1;
 const struct tcp_index *t2 = p2;

 return (asn_compare_oid(&t1->index, &t2->index));
}
