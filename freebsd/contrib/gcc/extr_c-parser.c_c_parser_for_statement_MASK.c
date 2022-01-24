#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_6__ ;
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_11__ {scalar_t__ value; } ;
struct TYPE_10__ {scalar_t__ value; } ;
struct TYPE_9__ {int /*<<< orphan*/  value; } ;
struct TYPE_8__ {int /*<<< orphan*/  location; } ;
struct TYPE_7__ {scalar_t__ type; scalar_t__ keyword; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 scalar_t__ CPP_KEYWORD ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ NULL_TREE ; 
 scalar_t__ RID_EXTENSION ; 
 scalar_t__ RID_FOR ; 
 scalar_t__ RID_IN ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ c_break_label ; 
 scalar_t__ c_cont_label ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,scalar_t__,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int,int,int,scalar_t__*) ; 
 TYPE_6__ FUNC13 (int /*<<< orphan*/ *) ; 
 TYPE_5__ FUNC14 (int /*<<< orphan*/ *) ; 
 TYPE_4__ FUNC15 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC20 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 scalar_t__ FUNC23 (scalar_t__) ; 
 scalar_t__ FUNC24 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC25 () ; 
 int FUNC26 () ; 
 scalar_t__ error_mark_node ; 
 scalar_t__ FUNC27 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  flag_isoc99 ; 
 int /*<<< orphan*/  FUNC28 (scalar_t__) ; 
 scalar_t__ objc_foreach_context ; 
 int /*<<< orphan*/  FUNC29 (int) ; 

__attribute__((used)) static void
FUNC30 (c_parser *parser)
{
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  tree block, cond, incr, save_break, save_cont, body, attrs;
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  location_t loc;
  /* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
  bool foreach_p = false;
  FUNC28 (FUNC17 (parser, RID_FOR));
  loc = FUNC20 (parser)->location;
  FUNC11 (parser);
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
  attrs = FUNC9 (parser);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  block = FUNC4 (flag_isoc99);
  if (FUNC21 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      /* Parse the initialization declaration or expression.  */
      if (FUNC16 (parser, CPP_SEMICOLON))
	{
	  FUNC11 (parser);
	  FUNC6 (NULL_TREE);
	}
      else if (FUNC18 (parser))
	{
	  /* APPLE LOCAL begin radar 4708210 (for_objc_collection in 4.2) */
	  cond = NULL_TREE;
	  FUNC12 (parser, true, true, true, true, &cond);
	  /* APPLE LOCAL radar 5925639 */
	  if (FUNC17 (parser, RID_IN) && cond)
	    {
	      cond = FUNC27 (parser, cond);
	      foreach_p = true;
	    }
	  else
	    FUNC25 ();
	  /* APPLE LOCAL end radar 4708210 (for_objc_collection in 4.2) */
	}
      else if (FUNC17 (parser, RID_EXTENSION))
	{
	  /* __extension__ can start a declaration, but is also an
	     unary operator that can start an expression.  Consume all
	     but the last of a possible series of __extension__ to
	     determine which.  */
	  while (FUNC19 (parser)->type == CPP_KEYWORD
		 && (FUNC19 (parser)->keyword
		     == RID_EXTENSION))
	    FUNC11 (parser);
	  if (FUNC24 (FUNC19 (parser)))
	    {
	      int ext;
	      ext = FUNC26 ();
	      FUNC11 (parser);
	      /* APPLE LOCAL begin radar 4708210 (for_objc_collection in 4.2) */
	      cond = NULL_TREE;
	      FUNC12 (parser, true, true, true, true, &cond);
	      FUNC29 (ext);
	      /* APPLE LOCAL radar 5925639 */
	      if (FUNC17 (parser, RID_IN) && cond)
	        {
		  cond = FUNC27 (parser, cond);
	          foreach_p = true;
	        }
	      else
		FUNC25 ();
	      /* APPLE LOCAL end radar 4708210 (for_objc_collection in 4.2) */
	    }
	  else
	    goto init_expr;
	}
      else
	{
	init_expr:
	  /* APPLE LOCAL begin radar 4708210 (for_objc_collection in 4.2) */
	  cond = FUNC13 (parser).value;
	  if (FUNC17 (parser, RID_IN))
	    {
	      FUNC11 (parser); /* IN */
	      cond = FUNC3 (cond, FUNC15 (parser).value); 
	      foreach_p = true;
	    }
	  else
	    {
	      FUNC6 (cond);
	      FUNC22 (parser, CPP_SEMICOLON, "expected %<;%>");
	    }
	}
	objc_foreach_context = 0;
	/* APPLE LOCAL end radar 4708210 (for_objc_collection in 4.2) */
      /* Parse the loop condition.  */
      loc = FUNC20 (parser)->location;
      if (FUNC16 (parser, CPP_SEMICOLON))
	{
	  FUNC11 (parser);
	  cond = NULL_TREE;
	}
      /* APPLE LOCAL begin radar 4708210 (for_objc_collection in 4.2) */
      else if (foreach_p)
	;
      /* APPLE LOCAL end radar 4708210 (for_objc_collection in 4.2) */
      else
	{
	  tree ocond = FUNC14 (parser).value;
	  cond = FUNC8 (ocond);
	  if (FUNC0 (cond))
	    FUNC1 (cond, loc);
	  FUNC22 (parser, CPP_SEMICOLON, "expected %<;%>");
	}
      /* Parse the increment expression.  */
      if (FUNC16 (parser, CPP_CLOSE_PAREN))
	incr = FUNC23 (NULL_TREE);
      else
	incr = FUNC23 (FUNC13 (parser).value);
      FUNC22 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  else
    {
      cond = error_mark_node;
      incr = error_mark_node;
    }
  save_break = c_break_label;
  c_break_label = NULL_TREE;
  save_cont = c_cont_label;
  c_cont_label = NULL_TREE;
  body = FUNC10 (parser);
/* APPLE LOCAL begin for-fsf-4_4 3274130 5295549 */ \
    FUNC7 (loc, cond, incr, body, c_break_label, c_cont_label, attrs,
		   true);
/* APPLE LOCAL end for-fsf-4_4 3274130 5295549 */ \
  FUNC2 (FUNC5 (block, flag_isoc99));
  c_break_label = save_break;
  c_cont_label = save_cont;
}