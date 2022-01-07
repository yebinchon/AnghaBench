
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dsa_switch {scalar_t__ index; TYPE_1__* dst; } ;
struct TYPE_2__ {scalar_t__ cpu_switch; int cpu_port; } ;



__attribute__((used)) static inline bool dsa_is_cpu_port(struct dsa_switch *ds, int p)
{
 return !!(ds->index == ds->dst->cpu_switch && p == ds->dst->cpu_port);
}
