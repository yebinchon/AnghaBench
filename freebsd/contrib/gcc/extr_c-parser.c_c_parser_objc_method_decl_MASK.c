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
typedef  int /*<<< orphan*/ * tree ;
struct c_parm {int dummy; } ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/ * value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_COLON ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_ELLIPSIS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_ATTRIBUTE ; 
 int /*<<< orphan*/  TREE_LIST ; 
 int /*<<< orphan*/ * FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ *) ; 
 struct c_parm* FUNC9 (int /*<<< orphan*/ *,scalar_t__) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (char*) ; 
 int /*<<< orphan*/ * error_mark_node ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 int /*<<< orphan*/  FUNC16 (struct c_parm*) ; 
 int /*<<< orphan*/ * FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC19 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 scalar_t__ objc_method_attributes ; 

__attribute__((used)) static tree
FUNC20 (c_parser *parser)
{
  tree type = NULL_TREE;
  tree sel;
  tree parms = NULL_TREE;
  bool ellipsis = false;

  if (FUNC4 (parser, CPP_OPEN_PAREN))
    {
      FUNC2 (parser);
      type = FUNC8 (parser);
      FUNC12 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
    }
  sel = FUNC7 (parser);
  /* If there is no selector, or a colon follows, we have an
     objc-keyword-selector.  If there is a selector, and a colon does
     not follow, that selector ends the objc-method-decl.  */
  if (!sel || FUNC4 (parser, CPP_COLON))
    {
      tree tsel = sel;
      tree list = NULL_TREE;
      while (true)
	{
	  /* APPLE LOCAL radar 4157812 */
	  tree attr = NULL_TREE;
	  tree atype = NULL_TREE, id, keyworddecl;
	  if (!FUNC11 (parser, CPP_COLON, "expected %<:%>"))
	    break;
	  if (FUNC4 (parser, CPP_OPEN_PAREN))
	    {
	      FUNC2 (parser);
	      atype = FUNC8 (parser);
	      FUNC12 (parser, CPP_CLOSE_PAREN,
					 "expected %<)%>");
	    }
	  /* APPLE LOCAL begin radar 4157812 */
	  if (FUNC5 (parser, RID_ATTRIBUTE))
	    attr = FUNC1 (parser);
	  /* APPLE LOCAL end radar 4157812 */
	  if (FUNC6 (parser, CPP_NAME))
	    {
	      FUNC3 (parser, "expected identifier");
	      return error_mark_node;
	    }
	  id = FUNC10 (parser)->value;
	  FUNC2 (parser);
	  /* APPLE LOCAL radar 4157812 */
	  keyworddecl = FUNC18 (tsel, atype, id, attr);
	  list = FUNC13 (list, keyworddecl);
	  tsel = FUNC7 (parser);
	  if (!tsel && FUNC6 (parser, CPP_COLON))
	    break;
	}
      /* APPLE LOCAL begin radar 3803157 - objc attribute (in 4.2 y) */
      if (FUNC5 (parser, RID_ATTRIBUTE))
	objc_method_attributes = FUNC1 (parser);
      /* APPLE LOCAL end radar 3803157 - objc attribute (in 4.2 y) */
      /* Parse the optional parameter list.  Optional Objective-C
	 method parameters follow the C syntax, and may include '...'
	 to denote a variable number of arguments.  */
      parms = FUNC17 (TREE_LIST);
      while (FUNC4 (parser, CPP_COMMA))
	{
	  struct c_parm *parm;
	  FUNC2 (parser);
	  if (FUNC4 (parser, CPP_ELLIPSIS))
	    {
	      ellipsis = true;
	      FUNC2 (parser);
	      /* APPLE LOCAL end radar 3803157 - objc attribute (in 4.2 y) */
	      if (objc_method_attributes)
		FUNC14 ("method attributes must be specified at the end only");
	      if (FUNC5 (parser, RID_ATTRIBUTE))
		objc_method_attributes = FUNC1 (parser);
	      /* APPLE LOCAL end radar 3803157 - objc attribute (in 4.2 y) */
	      break;
	    }
	  parm = FUNC9 (parser, NULL_TREE);
	  if (parm == NULL)
	    break;
	  parms = FUNC13 (parms,
			   FUNC0 (NULL_TREE, FUNC16 (parm)));
	}
      sel = list;
    }
  /* APPLE LOCAL begin radar 3803157 - objc attribute (in 4.2 y) */
  else
    {
      FUNC15 (objc_method_attributes == NULL_TREE);
      if (FUNC5 (parser, RID_ATTRIBUTE))
	objc_method_attributes = FUNC1 (parser);
    }
  /* APPLE LOCAL end radar 3803157 - objc attribute (in 4.2 y) */
  /* APPLE LOCAL begin radar 4157812 */
  if (sel == NULL)
    {
      FUNC3 (parser, "objective-c method declaration is expected");
      return error_mark_node;
    }
  /* APPLE LOCAL end radar 4157812 */
  return FUNC19 (type, sel, parms, ellipsis);
}