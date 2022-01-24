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
typedef  int /*<<< orphan*/  tree ;
struct c_typespec {int /*<<< orphan*/  kind; int /*<<< orphan*/  spec; } ;
typedef  enum tree_code { ____Placeholder_tree_code } tree_code ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int keyword; scalar_t__ id_kind; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_PRAGMA ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 scalar_t__ C_ID_CLASSNAME ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int RECORD_TYPE ; 
 int /*<<< orphan*/  RID_AT_DEFS ; 
#define  RID_STRUCT 129 
#define  RID_UNION 128 
 int UNION_TYPE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ctsk_tagdef ; 
 int /*<<< orphan*/  ctsk_tagref ; 
 int /*<<< orphan*/  error_mark_node ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 struct c_typespec FUNC17 (int,int /*<<< orphan*/ ) ; 
 scalar_t__ pedantic ; 
 int /*<<< orphan*/  FUNC18 (char*) ; 
 int /*<<< orphan*/  pragma_external ; 
 int /*<<< orphan*/  FUNC19 (int,int /*<<< orphan*/ ) ; 

__attribute__((used)) static struct c_typespec
FUNC20 (c_parser *parser)
{
  struct c_typespec ret;
  tree attrs;
  tree ident = NULL_TREE;
  enum tree_code code;
  switch (FUNC6 (parser)->keyword)
    {
    case RID_STRUCT:
      code = RECORD_TYPE;
      break;
    case RID_UNION:
      code = UNION_TYPE;
      break;
    default:
      FUNC14 ();
    }
  FUNC2 (parser);
  attrs = FUNC1 (parser);
  if (FUNC4 (parser, CPP_NAME))
    {
      ident = FUNC6 (parser)->value;
      FUNC2 (parser);
    }
  if (FUNC4 (parser, CPP_OPEN_BRACE))
    {
      /* Parse a struct or union definition.  Start the scope of the
	 tag before parsing components.  */
      tree type = FUNC19 (code, ident);
      tree postfix_attrs;
      /* We chain the components in reverse order, then put them in
	 forward order at the end.  Each struct-declaration may
	 declare multiple components (comma-separated), so we must use
	 chainon to join them, although when parsing each
	 struct-declaration we can use TREE_CHAIN directly.

	 The theory behind all this is that there will be more
	 semicolon separated fields than comma separated fields, and
	 so we'll be minimizing the number of node traversals required
	 by chainon.  */
      tree contents = NULL_TREE;
      FUNC2 (parser);
      /* Handle the Objective-C @defs construct,
	 e.g. foo(sizeof(struct{ @defs(ClassName) }));.  */
      if (FUNC5 (parser, RID_AT_DEFS))
	{
	  tree name;
	  FUNC13 (FUNC0 ());
	  FUNC2 (parser);
	  if (!FUNC8 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
	    goto end_at_defs;
	  if (FUNC4 (parser, CPP_NAME)
	      && FUNC6 (parser)->id_kind == C_ID_CLASSNAME)
	    {
	      name = FUNC6 (parser)->value;
	      FUNC2 (parser);
	    }
	  else
	    {
	      FUNC3 (parser, "expected class name");
	      FUNC9 (parser, CPP_CLOSE_PAREN, NULL);
	      goto end_at_defs;
	    }
	  FUNC9 (parser, CPP_CLOSE_PAREN,
				     "expected %<)%>");
	  contents = FUNC15 (FUNC16 (name));
	}
    end_at_defs:
      /* Parse the struct-declarations and semicolons.  Problems with
	 semicolons are diagnosed here; empty structures are diagnosed
	 elsewhere.  */
      while (true)
	{
	  tree decls;
	  /* Parse any stray semicolon.  */
	  if (FUNC4 (parser, CPP_SEMICOLON))
	    {
	      if (pedantic)
		FUNC18 ("extra semicolon in struct or union specified");
	      FUNC2 (parser);
	      continue;
	    }
	  /* Stop if at the end of the struct or union contents.  */
	  if (FUNC4 (parser, CPP_CLOSE_BRACE))
	    {
	      FUNC2 (parser);
	      break;
	    }
	  /* Accept #pragmas at struct scope.  */
	  if (FUNC4 (parser, CPP_PRAGMA))
	    {
	      FUNC7 (parser, pragma_external);
	      continue;
	    }
	  /* Parse some comma-separated declarations, but not the
	     trailing semicolon if any.  */
	  decls = FUNC10 (parser);
	  contents = FUNC11 (decls, contents);
	  /* If no semicolon follows, either we have a parse error or
	     are at the end of the struct or union and should
	     pedwarn.  */
	  if (FUNC4 (parser, CPP_SEMICOLON))
	    FUNC2 (parser);
	  else
	    {
	      if (FUNC4 (parser, CPP_CLOSE_BRACE))
		FUNC18 ("no semicolon at end of struct or union");
	      else
		{
		  FUNC3 (parser, "expected %<;%>");
		  FUNC9 (parser, CPP_CLOSE_BRACE, NULL);
		  break;
		}
	    }
	}
      postfix_attrs = FUNC1 (parser);
      ret.spec = FUNC12 (type, FUNC15 (contents),
				FUNC11 (attrs, postfix_attrs));
      ret.kind = ctsk_tagdef;
      return ret;
    }
  else if (!ident)
    {
      FUNC3 (parser, "expected %<{%>");
      ret.spec = error_mark_node;
      ret.kind = ctsk_tagref;
      return ret;
    }
  ret = FUNC17 (code, ident);
  return ret;
}