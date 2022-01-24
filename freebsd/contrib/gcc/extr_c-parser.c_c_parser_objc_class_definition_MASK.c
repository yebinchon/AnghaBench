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
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {scalar_t__ value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_COLON ; 
 int /*<<< orphan*/  CPP_LESS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  RID_AT_END ; 
 int /*<<< orphan*/  RID_AT_IMPLEMENTATION ; 
 int /*<<< orphan*/  RID_AT_INTERFACE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (char*) ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC18 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static void
/* APPLE LOCAL radar 4548636 - class attributes. */
FUNC20 (c_parser *parser, tree prefix_attrs)
{
  bool iface_p;
  tree id1;
  tree superclass;
  if (FUNC3 (parser, RID_AT_INTERFACE))
    iface_p = true;
  else if (FUNC3 (parser, RID_AT_IMPLEMENTATION))
    /* APPLE LOCAL begin radar 4548636 - class attributes. */
    {
      if (prefix_attrs)
	{
	  FUNC11 ("attributes may not be specified on an implementation");
	  prefix_attrs = NULL_TREE;
	}
      iface_p = false;
    }
    /* APPLE LOCAL end radar 4548636 - class attributes. */
  else
    FUNC12 ();
  FUNC0 (parser);
  if (FUNC4 (parser, CPP_NAME))
    {
      /* APPLE LOCAL radar 4965989 */
      tree id2 = NULL_TREE;
      tree proto = NULL_TREE;
      FUNC0 (parser);
      /* APPLE LOCAL begin radar 4965989 */
      if (FUNC4 (parser, CPP_CLOSE_PAREN))
	{
	   if (FUNC4 (parser, CPP_NAME))
	    {
	      FUNC1 (parser, "expected identifier");
	      FUNC10 (parser, CPP_CLOSE_PAREN, NULL);
	      return;
	    }
	   id2 = FUNC8 (parser)->value;
	   FUNC0 (parser);
	}
      /* APPLE LOCAL end radar 4965989 */
      FUNC10 (parser, CPP_CLOSE_PAREN, "expected %<)%>");
      if (!iface_p)
	{
	   /* APPLE LOCAL begin radar 4965989 */
	  if (id2 == NULL_TREE)
	    {
	      FUNC11 ("cannot implement anonymous category");
	      return;
	    }
	   /* APPLE LOCAL end radar 4965989 */
	  FUNC16 (id1, id2);
	  return;
	}
      if (FUNC2 (parser, CPP_LESS))
	proto = FUNC7 (parser);
      /* APPLE LOCAL begin radar 4548636 - class attributes. */
      if (prefix_attrs)
	FUNC11 ("attributes may not be specified on a category");
      /* APPLE LOCAL end radar 4548636 - class attributes. */
      FUNC17 (id1, id2, proto);
      /* APPLE LOCAL C* property (Radar 4436866) (in 4.2 q) */
      FUNC6 (parser);
      FUNC9 (parser, RID_AT_END, "expected %<@end%>");
      FUNC15 ();
      return;
    }
  if (FUNC2 (parser, CPP_COLON))
    {
      FUNC0 (parser);
      if (FUNC4 (parser, CPP_NAME))
	{
	  FUNC1 (parser, "expected identifier");
	  return;
	}
      superclass = FUNC8 (parser)->value;
      FUNC0 (parser);
    }
  else
    superclass = NULL_TREE;
  if (iface_p)
    {
      tree proto = NULL_TREE;
      if (FUNC2 (parser, CPP_LESS))
	proto = FUNC7 (parser);
      /* APPLE LOCAL radar 4548636 - class attributes. */
      FUNC19 (id1, superclass, proto, prefix_attrs);
    }
  else
    FUNC18 (id1, superclass);
  if (FUNC2 (parser, CPP_OPEN_BRACE))
    FUNC5 (parser);
  if (iface_p)
    {
      FUNC14 ();
      /* APPLE LOCAL C* property (Radar 4436866) (in 4.2 q) */
      FUNC6 (parser);
      FUNC9 (parser, RID_AT_END, "expected %<@end%>");
      FUNC15 ();
    }
  else
    {
      FUNC13 ();
      return;
    }
}