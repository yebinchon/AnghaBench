
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
struct dsa_switch_tree {size_t cpu_switch; int cpu_port; } ;
struct dsa_switch {size_t index; TYPE_1__* pd; struct dsa_switch_tree* dst; } ;
struct TYPE_2__ {int * rtable; } ;



__attribute__((used)) static inline u8 dsa_upstream_port(struct dsa_switch *ds)
{
 struct dsa_switch_tree *dst = ds->dst;







 if (dst->cpu_switch == ds->index)
  return dst->cpu_port;
 else
  return ds->pd->rtable[dst->cpu_switch];
}
