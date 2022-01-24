#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct block_sema_info {scalar_t__ block_byref_decl_list; scalar_t__ block_ref_decl_list; TYPE_1__* prev_block_info; void* BlockHasCopyDispose; } ;
struct TYPE_2__ {void* BlockHasCopyDispose; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FIELD_DECL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RECORD_TYPE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 void* TRUE ; 
 int /*<<< orphan*/  TYPE_UNQUALIFIED ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (void*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  ptr_type_node ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (char*,char*,int) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC16 (struct block_sema_info * block_impl)
{
  tree field_decl_chain, field_decl, chain;
  char buffer[32];
  static int unique_count;
  tree block_struct_type;

  /* Check and see if this block is required to have a Copy/Dispose
     helper function. If yes, set BlockHasCopyDispose to TRUE. */
  for (chain = block_impl->block_ref_decl_list; chain;
	chain = FUNC2 (chain))
    if (FUNC5 (FUNC4 (chain)))
    {
      block_impl->BlockHasCopyDispose = TRUE;
      break;
    }

  /* Further check to see that we have __block variables which require
     Copy/Dispose helpers. */
  for (chain = block_impl->block_byref_decl_list; chain;
	chain = FUNC2 (chain))
    if (FUNC0 (FUNC4 (chain)))
      {
	block_impl->BlockHasCopyDispose = TRUE;
	break;
      }

  FUNC14(buffer, "__block_literal_%d", ++unique_count);
  FUNC13 ();
  block_struct_type = FUNC15 (RECORD_TYPE, FUNC11 (buffer));
  
  /* void *__isa; */
  field_decl = FUNC7 (FIELD_DECL, FUNC11 ("__isa"), ptr_type_node);
  field_decl_chain = field_decl;
  
  /* int __flags */
  field_decl = FUNC7 (FIELD_DECL, FUNC11 ("__flags"),
			   integer_type_node);
  FUNC9 (field_decl_chain, field_decl);

  /* int __reserved */
  field_decl = FUNC7 (FIELD_DECL, FUNC11 ("__reserved"),
			   integer_type_node);
  FUNC9 (field_decl_chain, field_decl);
  
  /* void *__FuncPtr; */
  field_decl = FUNC7 (FIELD_DECL, FUNC11 ("__FuncPtr"), ptr_type_node);
  FUNC9 (field_decl_chain, field_decl);

  /* struct __block_descriptor *__descriptor */
  field_decl = FUNC7 (FIELD_DECL, FUNC11 ("__descriptor"),
			    FUNC6 (block_impl->BlockHasCopyDispose));
  FUNC9 (field_decl_chain, field_decl);
  
  if (block_impl->BlockHasCopyDispose)
  {
    /* If inner block of a nested block has BlockHasCopyDispose, so
	does its outer block. */
    if (block_impl->prev_block_info)
      block_impl->prev_block_info->BlockHasCopyDispose = TRUE;
  }

  /* int x; // ref variable list ... */
  for (chain = block_impl->block_ref_decl_list; chain; chain = FUNC2 (chain))
  {
    tree p = FUNC4 (chain);
    /* Note! const-ness of copied in variable must not be carried over to the
	type of the synthesized struct field. It prevents to assign to this
	field when copy constructor is synthesized. */
    field_decl = FUNC7 (FIELD_DECL, FUNC1 (p),
			     FUNC8 (FUNC3 (p),
			                             TYPE_UNQUALIFIED));
    FUNC9 (field_decl_chain, field_decl);
  }

  /* int *y; // byref variable list */
  for (chain = block_impl->block_byref_decl_list; chain; chain = FUNC2 (chain))
  {
    tree p = FUNC4 (chain);
    field_decl = FUNC7 (FIELD_DECL, FUNC1 (p),
			     FUNC3 (p));
    FUNC9 (field_decl_chain, field_decl);
  }
  FUNC12 ();
  FUNC10 (block_struct_type, field_decl_chain, NULL_TREE);
  return block_struct_type;
}