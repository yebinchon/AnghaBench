
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int * tree_ann_common_t ;
typedef TYPE_3__* tree ;
struct TYPE_6__ {TYPE_1__* ann; } ;
struct TYPE_7__ {TYPE_2__ common; } ;
struct TYPE_5__ {int common; } ;



__attribute__((used)) static inline tree_ann_common_t
tree_common_ann (tree t)
{
  return &t->common.ann->common;
}
