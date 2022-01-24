#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {scalar_t__ value; } ;
struct TYPE_3__ {int /*<<< orphan*/  location; scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_COLON ; 
 int /*<<< orphan*/  CPP_ELLIPSIS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  LABEL_EXPR ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_CASE ; 
 int /*<<< orphan*/  RID_DEFAULT ; 
 int /*<<< orphan*/  FUNC0 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*) ; 
 TYPE_2__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__*,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 

__attribute__((used)) static void
FUNC15 (c_parser *parser)
{
  location_t loc1 = FUNC9 (parser)->location;
  tree label = NULL_TREE;
  if (FUNC8 (parser, RID_CASE))
    {
      tree exp1, exp2;
      FUNC4 (parser);
      exp1 = FUNC6 (parser, NULL).value;
      if (FUNC7 (parser, CPP_COLON))
	{
	  FUNC4 (parser);
	  label = FUNC13 (exp1, NULL_TREE);
	}
      else if (FUNC7 (parser, CPP_ELLIPSIS))
	{
	  FUNC4 (parser);
	  exp2 = FUNC6 (parser, NULL).value;
	  if (FUNC10 (parser, CPP_COLON, "expected %<:%>"))
	    label = FUNC13 (exp1, exp2);
	}
      else
	FUNC5 (parser, "expected %<:%> or %<...%>");
    }
  else if (FUNC8 (parser, RID_DEFAULT))
    {
      FUNC4 (parser);
      if (FUNC10 (parser, CPP_COLON, "expected %<:%>"))
	label = FUNC13 (NULL_TREE, NULL_TREE);
    }
  else
    {
      tree name = FUNC9 (parser)->value;
      tree tlab;
      location_t loc2;
      tree attrs;
      FUNC14 (FUNC7 (parser, CPP_NAME));
      FUNC4 (parser);
      FUNC14 (FUNC7 (parser, CPP_COLON));
      loc2 = FUNC9 (parser)->location;
      FUNC4 (parser);
      attrs = FUNC3 (parser);
      tlab = FUNC12 (loc2, name);
      if (tlab)
	{
	  FUNC11 (&tlab, attrs, 0);
	  label = FUNC1 (FUNC2 (LABEL_EXPR, tlab));
	}
    }
  if (label)
    FUNC0 (label, loc1);
}