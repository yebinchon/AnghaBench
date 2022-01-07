
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_4__ {TYPE_1__* level; } ;
struct context {TYPE_2__ range; } ;
struct TYPE_3__ {scalar_t__ sens; int cat; } ;


 scalar_t__ ebitmap_cmp (int *,int *) ;
 int selinux_mls_enabled ;

__attribute__((used)) static inline int mls_context_cmp(struct context *c1, struct context *c2)
{
 if (!selinux_mls_enabled)
  return 1;

 return ((c1->range.level[0].sens == c2->range.level[0].sens) &&
  ebitmap_cmp(&c1->range.level[0].cat, &c2->range.level[0].cat) &&
  (c1->range.level[1].sens == c2->range.level[1].sens) &&
  ebitmap_cmp(&c1->range.level[1].cat, &c2->range.level[1].cat));
}
