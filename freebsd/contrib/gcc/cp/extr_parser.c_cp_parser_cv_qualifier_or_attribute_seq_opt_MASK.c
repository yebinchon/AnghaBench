#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
struct TYPE_7__ {scalar_t__ keyword; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_8__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_2__ cp_parser ;
typedef  int /*<<< orphan*/  cp_cv_quals ;

/* Variables and functions */
 int /*<<< orphan*/  NULL_TREE ; 
 scalar_t__ RID_ATTRIBUTE ; 
 int /*<<< orphan*/  TYPE_UNQUALIFIED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_2__*) ; 

__attribute__((used)) static cp_cv_quals
FUNC4 (cp_parser *parser, tree *attrs_p)
{
  cp_cv_quals quals = TYPE_UNQUALIFIED;
  cp_cv_quals q;
  cp_token *token;

  *attrs_p = NULL_TREE;
  while (true)
    {
      /* Peek at the next token.  */
      token = FUNC1 (parser->lexer);
      /* Handle attributes.  */
      if (token->keyword == RID_ATTRIBUTE)
	{
	  /* Parse the attributes.  */
	  *attrs_p = FUNC0 (*attrs_p,
			      FUNC2 (parser));
	  continue;
	}
      
      q = FUNC3 (parser);
      if (q == TYPE_UNQUALIFIED)
	break;
      quals |= q;
    }
  return quals;
}