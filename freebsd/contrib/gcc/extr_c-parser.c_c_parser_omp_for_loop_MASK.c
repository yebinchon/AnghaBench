#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/ * tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_12__ {int /*<<< orphan*/ * value; } ;
struct TYPE_11__ {int /*<<< orphan*/ * value; } ;
struct TYPE_10__ {int /*<<< orphan*/ * value; } ;
struct TYPE_9__ {scalar_t__ type; } ;
struct TYPE_8__ {int /*<<< orphan*/  location; } ;
struct TYPE_7__ {int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 scalar_t__ CPP_EQ ; 
 int /*<<< orphan*/  CPP_NAME ; 
 scalar_t__ CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 int /*<<< orphan*/  NOP_EXPR ; 
 void* NULL_TREE ; 
 int /*<<< orphan*/  RID_FOR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * c_break_label ; 
 int /*<<< orphan*/ * c_cont_label ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*) ; 
 TYPE_6__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_5__ FUNC12 (int /*<<< orphan*/ *) ; 
 TYPE_4__ FUNC13 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC18 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC19 (int /*<<< orphan*/ *) ; 
 TYPE_1__ FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC23 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC24 () ; 
 int /*<<< orphan*/ * error_mark_node ; 
 int /*<<< orphan*/  input_location ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC26 () ; 
 int /*<<< orphan*/ * size_one_node ; 
 int /*<<< orphan*/  void_type_node ; 

__attribute__((used)) static tree
FUNC27 (c_parser *parser)
{
  tree decl, cond, incr, save_break, save_cont, body, init;
  location_t loc;

  if (!FUNC15 (parser, RID_FOR))
    {
      FUNC10 (parser, "for statement expected");
      return NULL;
    }
  loc = FUNC19 (parser)->location;
  FUNC8 (parser);

  if (!FUNC21 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    return NULL;

  /* Parse the initialization declaration or expression.  */
  if (FUNC17 (parser))
    {
      /* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
      FUNC9 (parser, true, true, true, true, NULL);
      decl = FUNC24 ();
      if (decl == NULL)
	goto error_init;
      init = decl;
    }
  else if (FUNC14 (parser, CPP_NAME)
	   && FUNC18 (parser)->type == CPP_EQ)
    {
      decl = FUNC20 (parser).value;

      FUNC21 (parser, CPP_EQ, "expected %<=%>");

      init = FUNC11 (parser, NULL).value;
      init = FUNC4 (decl, NOP_EXPR, init);
      init = FUNC23 (init);

      FUNC22 (parser, CPP_SEMICOLON, "expected %<;%>");
    }
  else
    goto error_init;

  /* Parse the loop condition.  */
  cond = NULL_TREE;
  if (FUNC16 (parser, CPP_SEMICOLON))
    {
      cond = FUNC13 (parser).value;
      cond = FUNC6 (cond);
      if (FUNC0 (cond))
	FUNC1 (cond, input_location);
    }
  FUNC22 (parser, CPP_SEMICOLON, "expected %<;%>");

  /* Parse the increment expression.  */
  incr = NULL_TREE;
  if (FUNC16 (parser, CPP_CLOSE_PAREN))
    incr = FUNC23 (FUNC12 (parser).value);
  FUNC22 (parser, CPP_CLOSE_PAREN, "expected %<)%>");

 parse_body:
  save_break = c_break_label;
  c_break_label = size_one_node;
  save_cont = c_cont_label;
  c_cont_label = NULL_TREE;
  body = FUNC26 ();

  FUNC2 (FUNC7 (parser));
  if (c_cont_label)
    FUNC2 (FUNC3 (LABEL_EXPR, void_type_node, c_cont_label));

  body = FUNC25 (body);
  c_break_label = save_break;
  c_cont_label = save_cont;

  /* Only bother calling c_finish_omp_for if we havn't already generated
     an error from the initialization parsing.  */
  if (decl != NULL && decl != error_mark_node && init != error_mark_node)
    return FUNC5 (loc, decl, init, cond, incr, body, NULL);
  return NULL;

 error_init:
  FUNC10 (parser, "expected iteration declaration or initialization");
  FUNC22 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
  decl = init = cond = incr = NULL_TREE;
  goto parse_body;
}