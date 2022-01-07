
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mls_range {TYPE_3__* level; } ;
struct TYPE_5__ {TYPE_1__* level; } ;
struct context {TYPE_2__ range; } ;
struct TYPE_6__ {int cat; int sens; } ;
struct TYPE_4__ {int cat; int sens; } ;


 int ebitmap_cpy (int *,int *) ;

__attribute__((used)) static inline int mls_range_set(struct context *context,
    struct mls_range *range)
{
 int l, rc = 0;


 for (l = 0; l < 2; l++) {
  context->range.level[l].sens = range->level[l].sens;
  rc = ebitmap_cpy(&context->range.level[l].cat,
     &range->level[l].cat);
  if (rc)
   break;
 }

 return rc;
}
