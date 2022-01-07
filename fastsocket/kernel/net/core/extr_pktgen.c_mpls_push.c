
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pktgen_dev {unsigned int nr_labels; int* labels; } ;
typedef int __be32 ;


 int MPLS_STACK_BOTTOM ;

__attribute__((used)) static void mpls_push(__be32 *mpls, struct pktgen_dev *pkt_dev)
{
 unsigned i;
 for (i = 0; i < pkt_dev->nr_labels; i++)
  *mpls++ = pkt_dev->labels[i] & ~MPLS_STACK_BOTTOM;

 mpls--;
 *mpls |= MPLS_STACK_BOTTOM;
}
