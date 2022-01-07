
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ tree ;
typedef TYPE_1__* basic_block ;
struct TYPE_3__ {size_t index; } ;


 scalar_t__* label_for_bb ;
 TYPE_1__* label_to_block (scalar_t__) ;

__attribute__((used)) static tree
main_block_label (tree label)
{
  basic_block bb = label_to_block (label);


  if (!label_for_bb[bb->index])
    label_for_bb[bb->index] = label;
  return label_for_bb[bb->index];
}
