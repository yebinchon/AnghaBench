
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct vm_area_struct {int dummy; } ;
struct TYPE_2__ {int nodes; } ;
struct mempolicy {TYPE_1__ v; } ;


 int next_node (int,int ) ;
 unsigned int nodes_weight (int ) ;
 int numa_node_id () ;

__attribute__((used)) static unsigned offset_il_node(struct mempolicy *pol,
  struct vm_area_struct *vma, unsigned long off)
{
 unsigned nnodes = nodes_weight(pol->v.nodes);
 unsigned target;
 int c;
 int nid = -1;

 if (!nnodes)
  return numa_node_id();
 target = (unsigned int)off % nnodes;
 c = 0;
 do {
  nid = next_node(nid, pol->v.nodes);
  c++;
 } while (c <= target);
 return nid;
}
