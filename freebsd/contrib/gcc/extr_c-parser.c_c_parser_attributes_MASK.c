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
struct TYPE_3__ {int keyword; scalar_t__ id_kind; int /*<<< orphan*/  value; } ;

/* Variables and functions */
 scalar_t__ CPP_CLOSE_PAREN ; 
 scalar_t__ CPP_COMMA ; 
 scalar_t__ CPP_KEYWORD ; 
 scalar_t__ CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 scalar_t__ C_ID_ID ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_ATTRIBUTE ; 
#define  RID_AUTO 151 
#define  RID_BOOL 150 
#define  RID_CHAR 149 
#define  RID_COMPLEX 148 
#define  RID_CONST 147 
#define  RID_DFLOAT128 146 
#define  RID_DFLOAT32 145 
#define  RID_DFLOAT64 144 
#define  RID_DOUBLE 143 
#define  RID_EXTERN 142 
#define  RID_FLOAT 141 
#define  RID_INLINE 140 
#define  RID_INT 139 
#define  RID_LONG 138 
#define  RID_REGISTER 137 
#define  RID_RESTRICT 136 
#define  RID_SHORT 135 
#define  RID_SIGNED 134 
#define  RID_STATIC 133 
#define  RID_THREAD 132 
#define  RID_TYPEDEF 131 
#define  RID_UNSIGNED 130 
#define  RID_VOID 129 
#define  RID_VOLATILE 128 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int c_lex_string_translate ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC6 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,scalar_t__,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC12 (c_parser *parser)
{
  tree attrs = NULL_TREE;
  while (FUNC4 (parser, RID_ATTRIBUTE))
    {
      /* ??? Follow the C++ parser rather than using the
	 c_lex_string_translate kludge.  */
      c_lex_string_translate = 0;
      FUNC1 (parser);
      if (!FUNC8 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
	{
	  c_lex_string_translate = 1;
	  return attrs;
	}
      if (!FUNC8 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
	{
	  c_lex_string_translate = 1;
	  FUNC9 (parser, CPP_CLOSE_PAREN, NULL);
	  return attrs;
	}
      /* Parse the attribute list.  */
      while (FUNC3 (parser, CPP_COMMA)
	     || FUNC3 (parser, CPP_NAME)
	     || FUNC3 (parser, CPP_KEYWORD))
	{
	  tree attr, attr_name, attr_args;
	  if (FUNC3 (parser, CPP_COMMA))
	    {
	      FUNC1 (parser);
	      continue;
	    }
	  if (FUNC3 (parser, CPP_KEYWORD))
	    {
	      /* ??? See comment above about what keywords are
		 accepted here.  */
	      bool ok;
	      switch (FUNC7 (parser)->keyword)
		{
		case RID_STATIC:
		case RID_UNSIGNED:
		case RID_LONG:
		case RID_CONST:
		case RID_EXTERN:
		case RID_REGISTER:
		case RID_TYPEDEF:
		case RID_SHORT:
		case RID_INLINE:
		case RID_VOLATILE:
		case RID_SIGNED:
		case RID_AUTO:
		case RID_RESTRICT:
		case RID_COMPLEX:
		case RID_THREAD:
		case RID_INT:
		case RID_CHAR:
		case RID_FLOAT:
		case RID_DOUBLE:
		case RID_VOID:
		case RID_DFLOAT32:
		case RID_DFLOAT64:
		case RID_DFLOAT128:
		case RID_BOOL:
		  ok = true;
		  break;
		default:
		  ok = false;
		  break;
		}
	      if (!ok)
		break;
	    }
	  attr_name = FUNC7 (parser)->value;
	  FUNC1 (parser);
	  if (FUNC5 (parser, CPP_OPEN_PAREN))
	    {
	      attr = FUNC0 (attr_name, NULL_TREE);
	      attrs = FUNC10 (attrs, attr);
	      continue;
	    }
	  FUNC1 (parser);
	  /* Parse the attribute contents.  If they start with an
	     identifier which is followed by a comma or close
	     parenthesis, then the arguments start with that
	     identifier; otherwise they are an expression list.  */
	  if (FUNC3 (parser, CPP_NAME)
	      && FUNC7 (parser)->id_kind == C_ID_ID
	      && ((FUNC6 (parser)->type == CPP_COMMA)
		  || (FUNC6 (parser)->type
		      == CPP_CLOSE_PAREN)))
	    {
	      tree arg1 = FUNC7 (parser)->value;
	      FUNC1 (parser);
	      if (FUNC3 (parser, CPP_CLOSE_PAREN))
		attr_args = FUNC0 (NULL_TREE, arg1);
	      else
		{
		  FUNC1 (parser);
		  attr_args = FUNC11 (NULL_TREE, arg1,
					 FUNC2 (parser, false));
		}
	    }
	  else
	    {
	      if (FUNC3 (parser, CPP_CLOSE_PAREN))
		attr_args = NULL_TREE;
	      else
		attr_args = FUNC2 (parser, false);
	    }
	  attr = FUNC0 (attr_name, attr_args);
	  if (FUNC3 (parser, CPP_CLOSE_PAREN))
	    FUNC1 (parser);
	  else
	    {
	      c_lex_string_translate = 1;
	      FUNC9 (parser, CPP_CLOSE_PAREN,
					 "expected %<)%>");
	      return attrs;
	    }
	  attrs = FUNC10 (attrs, attr);
	}
      if (FUNC3 (parser, CPP_CLOSE_PAREN))
	FUNC1 (parser);
      else
	{
	  c_lex_string_translate = 1;
	  FUNC9 (parser, CPP_CLOSE_PAREN,
				     "expected %<)%>");
	  return attrs;
	}
      if (FUNC3 (parser, CPP_CLOSE_PAREN))
	FUNC1 (parser);
      else
	{
	  c_lex_string_translate = 1;
	  FUNC9 (parser, CPP_CLOSE_PAREN,
				     "expected %<)%>");
	  return attrs;
	}
      c_lex_string_translate = 1;
    }
  return attrs;
}