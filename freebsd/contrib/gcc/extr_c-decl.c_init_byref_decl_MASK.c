#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  scalar_t__ tree ;

/* Variables and functions */
 int /*<<< orphan*/  ADDR_EXPR ; 
 int BLOCK_ALIGN_MAX ; 
 int BLOCK_BYREF_CURRENT_MAX ; 
 int BLOCK_FIELD_IS_WEAK ; 
 unsigned int BLOCK_HAS_COPY_DISPOSE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int FUNC1 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 scalar_t__* block_byref_id_object_copy ; 
 scalar_t__* block_byref_id_object_dispose ; 
 scalar_t__ FUNC8 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int FUNC16 (int) ; 
 scalar_t__ FUNC17 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__) ; 
 scalar_t__ ptr_type_node ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC21 (int,int) ; 
 int /*<<< orphan*/  FUNC22 (int,int) ; 
 scalar_t__ FUNC23 (scalar_t__,scalar_t__,scalar_t__) ; 
 scalar_t__ void_list_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
/* APPLE LOCAL radar 5847976 */
FUNC24 (tree decl, tree init, int flag)
{
  tree initlist;
  tree block_byref_type = FUNC4 (decl);
  int size = FUNC3 (FUNC7 (block_byref_type));
  unsigned flags = 0;
  tree fields;

  if (FUNC0 (decl))
    flags = BLOCK_HAS_COPY_DISPOSE;

  fields = FUNC6 (block_byref_type);
  /* APPLE LOCAL begin radar 6244520 */
  /* APPLE LOCAL begin radar 5847976 */
  initlist = FUNC23 (fields, FUNC17 (ptr_type_node, ((flag & BLOCK_FIELD_IS_WEAK) != 0) ? integer_one_node 
									        : integer_zero_node), 0);
  /* APPLE LOCAL end radar 5847976 */
  fields = FUNC2 (fields);

  initlist = FUNC23 (fields,
			 FUNC13 (ADDR_EXPR, decl, 0), initlist);
   /* APPLE LOCAL end radar 6244520 */
  fields = FUNC2 (fields);

  initlist = FUNC23 (fields, FUNC12 (FUNC4 (fields), flags),
			 initlist);
  fields = FUNC2 (fields);
  initlist = FUNC23 (fields, FUNC12 (FUNC4 (fields), size),
			 initlist);
  fields = FUNC2 (fields);

  if (FUNC0 (decl))
    {
      char name[64];
      int align = FUNC16 ((FUNC1 (decl)+FUNC5 (ptr_type_node)-1) / FUNC5 (ptr_type_node));
      int kind;
      if (align == -1 || align > BLOCK_ALIGN_MAX) {
	FUNC15 ("invalid alignment for __block variable");
	kind = 0;
      } else
	kind = align*BLOCK_BYREF_CURRENT_MAX + flag;
      /* Add &__Block_byref_id_object_copy, &__Block_byref_id_object_dispose
	 initializers. */
      if (!block_byref_id_object_copy[kind])
	{
	  /* Build a void __Block_byref_id_object_copy(void*, void*) type. */
	  tree func_type =
	    FUNC10 (void_type_node,
				 FUNC23 (NULL_TREE, ptr_type_node,
					    FUNC23 (NULL_TREE, ptr_type_node,
						       void_list_node)));
	  FUNC20 (name, "__Block_byref_id_object_copy%d", kind);
	  block_byref_id_object_copy[kind] = FUNC11 (FUNC18 (name),
								     func_type);
	  /* Synthesize function definition. */
	  FUNC21 (flag, kind);
	}
      initlist = FUNC23 (fields,
			    FUNC9 (block_byref_id_object_copy[kind]),
			    initlist);
      fields = FUNC2 (fields);

      if (!block_byref_id_object_dispose[kind])
	{
	  /* Synthesize void __Block_byref_id_object_dispose (void*) and
	     build &__Block_byref_id_object_dispose. */
	  tree func_type =
	    FUNC10 (void_type_node,
				 FUNC23 (NULL_TREE, ptr_type_node, void_list_node));
	  FUNC20 (name, "__Block_byref_id_object_dispose%d", kind);
	  block_byref_id_object_dispose[kind] = FUNC11 (FUNC18 (name),
									func_type);
	  /* Synthesize function definition. */
	  FUNC22 (flag, kind);
	}
      initlist = FUNC23 (fields,
			    FUNC9 (block_byref_id_object_dispose[kind]),
			    initlist);
      fields = FUNC2 (fields);
    }

  if (init)
    {
      init = FUNC14 (FUNC4 (fields), init);
      initlist = FUNC23 (fields, init, initlist);
    }
  init =  FUNC8 (block_byref_type, FUNC19 (initlist));
  return init;
}