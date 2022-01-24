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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_4__ {scalar_t__ type; } ;
struct TYPE_3__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ CPP_COMMA ; 
 scalar_t__ CPP_LESS ; 
 int /*<<< orphan*/  CPP_NAME ; 
 scalar_t__ CPP_SEMICOLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_AT_END ; 
 int /*<<< orphan*/  RID_AT_PROTOCOL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC8 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int objc_pq_context ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
/* APPLE LOCAL radar 4947311 - protocol attributes */
FUNC17 (c_parser *parser, tree attributes)
{
  FUNC13 (FUNC4 (parser, RID_AT_PROTOCOL));
  FUNC1 (parser);
  if (FUNC5 (parser, CPP_NAME))
    {
      FUNC2 (parser, "expected identifier");
      return;
    }
  if (FUNC8 (parser)->type == CPP_COMMA
      || FUNC8 (parser)->type == CPP_SEMICOLON)
    {
      tree list = NULL_TREE;
      /* Any identifiers, including those declared as type names, are
	 OK here.  */
      while (true)
	{
	  tree id;
	  if (FUNC5 (parser, CPP_NAME))
	    {
	      FUNC2 (parser, "expected identifier");
	      break;
	    }
	  id = FUNC9 (parser)->value;
	  list = FUNC12 (list, FUNC0 (NULL_TREE, id));
	  FUNC1 (parser);
	  if (FUNC3 (parser, CPP_COMMA))
	    FUNC1 (parser);
	  else
	    break;
	}
      FUNC11 (parser, CPP_SEMICOLON, "expected %<;%>");
      /* APPLE LOCAL radar 4947311 - protocol attributes */
      FUNC14 (list, attributes);
    }
  else
    {
      tree id = FUNC9 (parser)->value;
      tree proto = NULL_TREE;
      FUNC1 (parser);
      if (FUNC3 (parser, CPP_LESS))
	proto = FUNC7 (parser);
      objc_pq_context = 1;
      /* APPLE LOCAL radar 4947311 - protocol attributes */
      FUNC16 (id, proto, attributes);
      /* APPLE LOCAL C* property (Radar 4436866) (in 4.2 r) */
      FUNC6 (parser);
      FUNC10 (parser, RID_AT_END, "expected %<@end%>");
      objc_pq_context = 0;
      FUNC15 ();
    }
}