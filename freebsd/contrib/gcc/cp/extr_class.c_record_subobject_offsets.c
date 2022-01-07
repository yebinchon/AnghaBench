
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
typedef int splay_tree ;


 int BINFO_TYPE (int ) ;
 int NULL_TREE ;
 int is_empty_class (int ) ;
 int record_subobject_offset ;
 int sizeof_biggest_empty_class ;
 int walk_subobject_offsets (int ,int ,int ,int ,int ,int) ;

__attribute__((used)) static void
record_subobject_offsets (tree type,
     tree offset,
     splay_tree offsets,
     bool is_data_member)
{
  tree max_offset;
  if (is_data_member
      || !is_empty_class (BINFO_TYPE (type)))
    max_offset = sizeof_biggest_empty_class;
  else
    max_offset = NULL_TREE;
  walk_subobject_offsets (type, record_subobject_offset, offset,
     offsets, max_offset, is_data_member);
}
