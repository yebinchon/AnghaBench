
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_2__* tree_ann_t ;
typedef enum tree_ann_type { ____Placeholder_tree_ann_type } tree_ann_type ;
struct TYPE_4__ {int type; } ;
struct TYPE_5__ {TYPE_1__ common; } ;



__attribute__((used)) static inline enum tree_ann_type
ann_type (tree_ann_t ann)
{
  return ann->common.type;
}
