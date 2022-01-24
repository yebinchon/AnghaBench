#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_3__ ;
typedef  struct TYPE_12__   TYPE_2__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct cgraph_node {struct cgraph_node* next_clone; } ;
struct cgraph_edge {int dummy; } ;
struct TYPE_12__ {int transform_call_graph_edges; scalar_t__ eh_region_offset; scalar_t__ eh_region; int /*<<< orphan*/  src_cfun; struct cgraph_node* dst_node; struct cgraph_node* src_node; } ;
typedef  TYPE_2__ copy_body_data ;
typedef  int /*<<< orphan*/  block_stmt_iterator ;
typedef  TYPE_3__* basic_block ;
struct TYPE_13__ {int count; int frequency; TYPE_1__* prev_bb; } ;
struct TYPE_11__ {scalar_t__ aux; } ;

/* Variables and functions */
 int /*<<< orphan*/  BSI_NEW_STMT ; 
#define  CB_CGE_DUPLICATE 130 
#define  CB_CGE_MOVE 129 
#define  CB_CGE_MOVE_CLONES 128 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ NOP_EXPR ; 
 int REG_BR_PROB_BASE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_3__*) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (struct cgraph_edge*,struct cgraph_node*,scalar_t__,int,int,int) ; 
 struct cgraph_edge* FUNC9 (struct cgraph_node*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (struct cgraph_edge*,scalar_t__) ; 
 int /*<<< orphan*/  copy_body_r ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,void*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 
 int FUNC18 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC19 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC20 (scalar_t__*,int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static basic_block
FUNC21 (copy_body_data *id, basic_block bb, int frequency_scale, int count_scale)
{
  block_stmt_iterator bsi, copy_bsi;
  basic_block copy_basic_block;

  /* create_basic_block() will append every new block to
     basic_block_info automatically.  */
  copy_basic_block = FUNC11 (NULL, (void *) 0,
                                         (basic_block) bb->prev_bb->aux);
  copy_basic_block->count = bb->count * count_scale / REG_BR_PROB_BASE;
  copy_basic_block->frequency = (bb->frequency
				     * frequency_scale / REG_BR_PROB_BASE);
  copy_bsi = FUNC6 (copy_basic_block);

  for (bsi = FUNC6 (bb);
       !FUNC3 (bsi); FUNC5 (&bsi))
    {
      tree stmt = FUNC7 (bsi);
      tree orig_stmt = stmt;

      FUNC20 (&stmt, copy_body_r, id, NULL);

      /* RETURN_EXPR might be removed,
         this is signalled by making stmt pointer NULL.  */
      if (stmt)
	{
	  tree call, decl;

	  /* With return slot optimization we can end up with
	     non-gimple (foo *)&this->m, fix that here.  */
	  if (FUNC0 (stmt) == MODIFY_EXPR
	      && FUNC0 (FUNC1 (stmt, 1)) == NOP_EXPR
	      && !FUNC17 (FUNC1 (FUNC1 (stmt, 1), 0)))
	    FUNC16 (&stmt);

          FUNC4 (&copy_bsi, stmt, BSI_NEW_STMT);
	  call = FUNC14 (stmt);
	  /* We're duplicating a CALL_EXPR.  Find any corresponding
	     callgraph edges and update or duplicate them.  */
	  if (call && (decl = FUNC15 (call)))
	    {
	      struct cgraph_node *node;
	      struct cgraph_edge *edge;
	     
	      switch (id->transform_call_graph_edges)
		{
		case CB_CGE_DUPLICATE:
		  edge = FUNC9 (id->src_node, orig_stmt);
		  if (edge)
		    FUNC8 (edge, id->dst_node, stmt,
				       REG_BR_PROB_BASE, 1, true);
		  break;

		case CB_CGE_MOVE_CLONES:
		  for (node = id->dst_node->next_clone;
		       node;
		       node = node->next_clone)
		    {
		      edge = FUNC9 (node, orig_stmt);
		      FUNC12 (edge);
		      FUNC10 (edge, stmt);
		    }
		  /* FALLTHRU */

		case CB_CGE_MOVE:
		  edge = FUNC9 (id->dst_node, orig_stmt);
		  if (edge)
		    FUNC10 (edge, stmt);
		  break;

		default:
		  FUNC13 ();
		}
	    }
	  /* If you think we can abort here, you are wrong.
	     There is no region 0 in tree land.  */
	  FUNC12 (FUNC18 (id->src_cfun, orig_stmt)
		      != 0);

	  if (FUNC19 (stmt))
	    {
	      int region = FUNC18 (id->src_cfun, orig_stmt);
	      /* Add an entry for the copied tree in the EH hashtable.
		 When cloning or versioning, use the hashtable in
		 cfun, and just copy the EH number.  When inlining, use the
		 hashtable in the caller, and adjust the region number.  */
	      if (region > 0)
		FUNC2 (stmt, region + id->eh_region_offset);

	      /* If this tree doesn't have a region associated with it,
		 and there is a "current region,"
		 then associate this tree with the current region
		 and add edges associated with this region.  */
	      if ((FUNC18 (id->src_cfun,
					     orig_stmt) <= 0
		   && id->eh_region > 0)
		  && FUNC19 (stmt))
		FUNC2 (stmt, id->eh_region);
	    }
	}
    }
  return copy_basic_block;
}