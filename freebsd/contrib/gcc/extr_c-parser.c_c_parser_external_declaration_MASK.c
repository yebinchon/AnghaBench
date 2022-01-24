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
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int type; int /*<<< orphan*/  keyword; } ;

/* Variables and functions */
#define  CPP_KEYWORD 141 
#define  CPP_MINUS 140 
#define  CPP_PLUS 139 
#define  CPP_PRAGMA 138 
#define  CPP_SEMICOLON 137 
 int /*<<< orphan*/  NULL_TREE ; 
#define  RID_ASM 136 
#define  RID_AT_ALIAS 135 
#define  RID_AT_CLASS 134 
#define  RID_AT_END 133 
#define  RID_AT_IMPLEMENTATION 132 
#define  RID_AT_INTERFACE 131 
#define  RID_AT_PROPERTY 130 
#define  RID_AT_PROTOCOL 129 
#define  RID_EXTENSION 128 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  pragma_external ; 
 int /*<<< orphan*/  FUNC16 (int) ; 

__attribute__((used)) static void
FUNC17 (c_parser *parser)
{
  int ext;
  switch (FUNC10 (parser)->type)
    {
    case CPP_KEYWORD:
      switch (FUNC10 (parser)->keyword)
	{
	case RID_EXTENSION:
	  ext = FUNC12 ();
	  FUNC2 (parser);
	  FUNC17 (parser);
	  FUNC16 (ext);
	  break;
	case RID_ASM:
	  FUNC1 (parser);
	  break;
	case RID_AT_INTERFACE:
	case RID_AT_IMPLEMENTATION:
	  FUNC13 (FUNC0 ());
	  /* APPLE LOCAL radar 4548636 - class attributes. */
	  FUNC6 (parser, NULL_TREE);
	  break;
	case RID_AT_CLASS:
	  FUNC13 (FUNC0 ());
	  FUNC5 (parser);
	  break;
	case RID_AT_ALIAS:
	  FUNC13 (FUNC0 ());
	  FUNC4 (parser);
	  break;
	case RID_AT_PROTOCOL:
	  FUNC13 (FUNC0 ());
	  /* APPLE LOCAL begin radar 4947311 - protocol attributes */
	  FUNC9 (parser, NULL_TREE);
	  break;
	  /* APPLE LOCAL end radar 4947311 - protocol attributes */
	  /* APPLE LOCAL begin C* property (Radar 4436866) (in 4.2 x) */
	case RID_AT_PROPERTY:
	  FUNC8 (parser);
	  break;
	  /* APPLE LOCAL end C* property (Radar 4436866) (in 4.2 x) */
	case RID_AT_END:
	  FUNC13 (FUNC0 ());
	  FUNC2 (parser);
	  FUNC14 ();
	  break;
	default:
	  goto decl_or_fndef;
	}
      break;
    case CPP_SEMICOLON:
      if (pedantic)
	FUNC15 ("ISO C does not allow extra %<;%> outside of a function");
      FUNC2 (parser);
      break;
    case CPP_PRAGMA:
      FUNC11 (parser, pragma_external);
      break;
    case CPP_PLUS:
    case CPP_MINUS:
      if (FUNC0 ())
	{
	  FUNC7 (parser);
	  break;
	}
      /* Else fall through, and yield a syntax error trying to parse
	 as a declaration or function definition.  */
    default:
    decl_or_fndef:
      /* A declaration or a function definition.  We can only tell
	 which after parsing the declaration specifiers, if any, and
	 the first declarator.  */
      /* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
      FUNC3 (parser, true, true, false, true, NULL);
      break;
    }
}