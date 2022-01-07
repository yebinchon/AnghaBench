
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int edge ;
typedef int basic_block ;


 int split_block (int ,int *) ;

edge
split_block_after_labels (basic_block bb)
{
  return split_block (bb, ((void*)0));
}
