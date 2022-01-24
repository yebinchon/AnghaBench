#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {scalar_t__ type; scalar_t__ keyword; } ;
typedef  TYPE_1__ c_token ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
#define  CPP_EOF 130 
 scalar_t__ CPP_KEYWORD ; 
#define  CPP_PRAGMA 129 
#define  CPP_SEMICOLON 128 
 int /*<<< orphan*/  RID_AT_END ; 
 scalar_t__ RID_AT_PROPERTY ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  pedantic ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 int /*<<< orphan*/  pragma_external ; 

__attribute__((used)) static void
/* APPLE LOCAL C* property (Radar 4436866) (in 4.2 b) */
FUNC9 (c_parser *parser)
{
  while (true)
    {
      /* APPLE LOCAL begin C* property (Radar 4436866) (in 4.2 b) */
      c_token *token;
      token = FUNC5 (parser);
      if (token->type == CPP_KEYWORD
	  && token->keyword == RID_AT_PROPERTY)
	{
	  FUNC4 (parser);
	  continue;
	}
      /* APPLE LOCAL end C* property (Radar 4436866) (in 4.2 b) */
      /* APPLE LOCAL begin C* language (in 4.2 w) */
      if (FUNC7 (token))
	{
	  FUNC3 (parser);
	  continue;
	}
      /* APPLE LOCAL end C* language (in 4.2 w) */

      /* The list is terminated by @end.  */
      switch (FUNC5 (parser)->type)
	{
	case CPP_SEMICOLON:
	  if (pedantic)
	    FUNC8 ("ISO C does not allow extra %<;%> outside of a function");
	  FUNC0 (parser);
	  break;
      /* APPLE LOCAL begin C* language (in 4.2 w) */
	  /* CPP_PLUS and CPP_MINUS deleted */
      /* APPLE LOCAL end C* language (in 4.2 w) */
	case CPP_PRAGMA:
	  FUNC6 (parser, pragma_external);
	  break;
	case CPP_EOF:
	  return;
	default:
	  if (FUNC2 (parser, RID_AT_END))
	    return;
	  /* APPLE LOCAL radar 4708210 (for_objc_collection in 4.2) */
	  FUNC1 (parser, false, true, false, true, NULL);
	  break;
	}
    }
}