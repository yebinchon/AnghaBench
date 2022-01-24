#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  location_t ;
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_6__ {scalar_t__ value; } ;
struct TYPE_5__ {scalar_t__ value; } ;
struct TYPE_4__ {int type; int /*<<< orphan*/  value; int /*<<< orphan*/  keyword; int /*<<< orphan*/  location; } ;

/* Variables and functions */
 scalar_t__ BLOCK_POINTER_TYPE ; 
#define  CPP_CLOSE_PAREN 146 
#define  CPP_CLOSE_SQUARE 145 
#define  CPP_KEYWORD 144 
 int CPP_MULT ; 
 int CPP_NAME ; 
#define  CPP_OPEN_BRACE 143 
#define  CPP_PRAGMA 142 
#define  CPP_SEMICOLON 141 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ MODIFY_EXPR ; 
 scalar_t__ NULL_TREE ; 
#define  RID_ASM 140 
#define  RID_AT_SYNCHRONIZED 139 
#define  RID_AT_THROW 138 
#define  RID_AT_TRY 137 
#define  RID_BREAK 136 
#define  RID_CONTINUE 135 
#define  RID_DO 134 
#define  RID_FOR 133 
#define  RID_GOTO 132 
#define  RID_IF 131 
#define  RID_RETURN 130 
#define  RID_SWITCH 129 
#define  RID_WHILE 128 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  c_break_label ; 
 int /*<<< orphan*/  c_cont_label ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (scalar_t__) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*) ; 
 TYPE_3__ FUNC17 (int /*<<< orphan*/ *) ; 
 TYPE_2__ FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC24 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (int /*<<< orphan*/ *,int const,char*) ; 
 int /*<<< orphan*/  FUNC27 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cur_block ; 
 int /*<<< orphan*/  FUNC29 (char*) ; 
 int /*<<< orphan*/  FUNC30 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  input_location ; 
 scalar_t__ FUNC31 (scalar_t__) ; 
 int /*<<< orphan*/  pragma_stmt ; 

__attribute__((used)) static void
FUNC32 (c_parser *parser)
{
  location_t loc = FUNC24 (parser)->location;
  tree stmt = NULL_TREE;
  switch (FUNC24 (parser)->type)
    {
    case CPP_OPEN_BRACE:
      FUNC5 (FUNC13 (parser));
      break;
    case CPP_KEYWORD:
      switch (FUNC24 (parser)->keyword)
	{
	case RID_IF:
	  FUNC20 (parser);
	  break;
	case RID_SWITCH:
	  FUNC27 (parser);
	  break;
	case RID_WHILE:
	  FUNC28 (parser);
	  break;
	case RID_DO:
	  FUNC15 (parser);
	  break;
	case RID_FOR:
	  FUNC19 (parser);
	  break;
	case RID_GOTO:
	   /* APPLE LOCAL begin radar 5732232 - blocks (C++ cb) */
	   if (cur_block)
	     FUNC29 ("goto not allowed in block literal");
	   /* APPLE LOCAL end radar 5732232 - blocks (C++ cb) */
	  FUNC14 (parser);
	  if (FUNC21 (parser, CPP_NAME))
	    {
	      stmt = FUNC9 (FUNC24 (parser)->value);
	      FUNC14 (parser);
	    }
	  else if (FUNC21 (parser, CPP_MULT))
	    {
	      FUNC14 (parser);
	      stmt = FUNC10 (FUNC17 (parser).value);
	    }
	  else
	    FUNC16 (parser, "expected identifier or %<*%>");
	  goto expect_semicolon;
	case RID_CONTINUE:
	  FUNC14 (parser);
	  stmt = FUNC7 (&c_cont_label, false);
	  goto expect_semicolon;
	case RID_BREAK:
	  FUNC14 (parser);
	  stmt = FUNC7 (&c_break_label, true);
	  goto expect_semicolon;
	case RID_RETURN:
	  FUNC14 (parser);
	  if (FUNC21 (parser, CPP_SEMICOLON))
	    {
	      stmt = FUNC11 (NULL_TREE);
	      FUNC14 (parser);
	    }
	  else
	    {
	      stmt = FUNC11 (FUNC18 (parser).value);
	      goto expect_semicolon;
	    }
	  break;
	case RID_ASM:
	  stmt = FUNC12 (parser);
	  break;
	case RID_AT_THROW:
	  FUNC30 (FUNC6 ());
	  FUNC14 (parser);
	  if (FUNC21 (parser, CPP_SEMICOLON))
	    {
	      stmt = FUNC31 (NULL_TREE);
	      FUNC14 (parser);
	    }
	  else
	    {
	      stmt
		= FUNC31 (FUNC17 (parser).value);
	      goto expect_semicolon;
	    }
	  break;
	case RID_AT_TRY:
	  FUNC30 (FUNC6 ());
	  FUNC23 (parser);
	  break;
	case RID_AT_SYNCHRONIZED:
	  FUNC30 (FUNC6 ());
	  FUNC22 (parser);
	  break;
	default:
	  goto expr_stmt;
	}
      break;
    case CPP_SEMICOLON:
      FUNC14 (parser);
      break;
    case CPP_CLOSE_PAREN:
    case CPP_CLOSE_SQUARE:
      /* Avoid infinite loop in error recovery:
	 c_parser_skip_until_found stops at a closing nesting
	 delimiter without consuming it, but here we need to consume
	 it to proceed further.  */
      FUNC16 (parser, "expected statement");
      FUNC14 (parser);
      break;
    case CPP_PRAGMA:
      FUNC25 (parser, pragma_stmt);
      break;
    default:
    expr_stmt:
      stmt = FUNC8 (FUNC18 (parser).value);
    expect_semicolon:
      FUNC26 (parser, CPP_SEMICOLON, "expected %<;%>");
      break;
    }
  /* Two cases cannot and do not have line numbers associated: If stmt
     is degenerate, such as "2;", then stmt is an INTEGER_CST, which
     cannot hold line numbers.  But that's OK because the statement
     will either be changed to a MODIFY_EXPR during gimplification of
     the statement expr, or discarded.  If stmt was compound, but
     without new variables, we will have skipped the creation of a
     BIND and will have a bare STATEMENT_LIST.  But that's OK because
     (recursively) all of the component statements should already have
     line numbers assigned.  ??? Can we discard no-op statements
     earlier?  */
  /* APPLE LOCAL begin Radar 6144634  */
  /* Normal expr stmts, including modify exprs, get the location where
     the statement began, i.e. 'loc'.  Assignments of Blocks to Block
     pointer variables get the location of the end of the Block definition,
     i.e. 'input_location', which should already be set by this point.  */
  if (stmt && FUNC0 (stmt))
    {
      if (FUNC2 (stmt) == MODIFY_EXPR
	  && FUNC2 (FUNC4 (FUNC3 (stmt, 0))) == BLOCK_POINTER_TYPE)
	FUNC1 (stmt, input_location);
      else
	FUNC1 (stmt, loc);
    }
  /* APPLE LOCAL end Radar 6144634  */
}