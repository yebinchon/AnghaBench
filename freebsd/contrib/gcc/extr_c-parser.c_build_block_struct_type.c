
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef scalar_t__ tree ;
struct block_sema_info {scalar_t__ block_byref_decl_list; scalar_t__ block_ref_decl_list; TYPE_1__* prev_block_info; void* BlockHasCopyDispose; } ;
struct TYPE_2__ {void* BlockHasCopyDispose; } ;


 scalar_t__ COPYABLE_BYREF_LOCAL_VAR (scalar_t__) ;
 int DECL_NAME (scalar_t__) ;
 int FIELD_DECL ;
 int NULL_TREE ;
 int RECORD_TYPE ;
 scalar_t__ TREE_CHAIN (scalar_t__) ;
 int TREE_TYPE (scalar_t__) ;
 scalar_t__ TREE_VALUE (scalar_t__) ;
 void* TRUE ;
 int TYPE_UNQUALIFIED ;
 scalar_t__ block_requires_copying (scalar_t__) ;
 int build_block_descriptor_type (void*) ;
 scalar_t__ build_decl (int ,int ,int ) ;
 int c_build_qualified_type (int ,int ) ;
 int chainon (scalar_t__,scalar_t__) ;
 int finish_struct (scalar_t__,scalar_t__,int ) ;
 int get_identifier (char*) ;
 int integer_type_node ;
 int pop_from_top_level () ;
 int ptr_type_node ;
 int push_to_top_level () ;
 int sprintf (char*,char*,int) ;
 scalar_t__ start_struct (int ,int ) ;

__attribute__((used)) static tree
build_block_struct_type (struct block_sema_info * block_impl)
{
  tree field_decl_chain, field_decl, chain;
  char buffer[32];
  static int unique_count;
  tree block_struct_type;



  for (chain = block_impl->block_ref_decl_list; chain;
 chain = TREE_CHAIN (chain))
    if (block_requires_copying (TREE_VALUE (chain)))
    {
      block_impl->BlockHasCopyDispose = TRUE;
      break;
    }



  for (chain = block_impl->block_byref_decl_list; chain;
 chain = TREE_CHAIN (chain))
    if (COPYABLE_BYREF_LOCAL_VAR (TREE_VALUE (chain)))
      {
 block_impl->BlockHasCopyDispose = TRUE;
 break;
      }

  sprintf(buffer, "__block_literal_%d", ++unique_count);
  push_to_top_level ();
  block_struct_type = start_struct (RECORD_TYPE, get_identifier (buffer));


  field_decl = build_decl (FIELD_DECL, get_identifier ("__isa"), ptr_type_node);
  field_decl_chain = field_decl;


  field_decl = build_decl (FIELD_DECL, get_identifier ("__flags"),
      integer_type_node);
  chainon (field_decl_chain, field_decl);


  field_decl = build_decl (FIELD_DECL, get_identifier ("__reserved"),
      integer_type_node);
  chainon (field_decl_chain, field_decl);


  field_decl = build_decl (FIELD_DECL, get_identifier ("__FuncPtr"), ptr_type_node);
  chainon (field_decl_chain, field_decl);


  field_decl = build_decl (FIELD_DECL, get_identifier ("__descriptor"),
       build_block_descriptor_type (block_impl->BlockHasCopyDispose));
  chainon (field_decl_chain, field_decl);

  if (block_impl->BlockHasCopyDispose)
  {


    if (block_impl->prev_block_info)
      block_impl->prev_block_info->BlockHasCopyDispose = TRUE;
  }


  for (chain = block_impl->block_ref_decl_list; chain; chain = TREE_CHAIN (chain))
  {
    tree p = TREE_VALUE (chain);



    field_decl = build_decl (FIELD_DECL, DECL_NAME (p),
        c_build_qualified_type (TREE_TYPE (p),
                                TYPE_UNQUALIFIED));
    chainon (field_decl_chain, field_decl);
  }


  for (chain = block_impl->block_byref_decl_list; chain; chain = TREE_CHAIN (chain))
  {
    tree p = TREE_VALUE (chain);
    field_decl = build_decl (FIELD_DECL, DECL_NAME (p),
        TREE_TYPE (p));
    chainon (field_decl_chain, field_decl);
  }
  pop_from_top_level ();
  finish_struct (block_struct_type, field_decl_chain, NULL_TREE);
  return block_struct_type;
}
