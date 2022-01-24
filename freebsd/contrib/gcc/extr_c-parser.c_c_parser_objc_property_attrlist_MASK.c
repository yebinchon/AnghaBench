#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_COMMA ; 
 int /*<<< orphan*/  CPP_EOF ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static void
FUNC5 (c_parser *parser)
{
  while (FUNC2 (parser, CPP_CLOSE_PAREN)
	 && FUNC2 (parser, CPP_EOF))
    {
      FUNC3 (parser);
      /* APPLE LOCAL begin radar 6302949 */
      if (FUNC2 (parser, CPP_COMMA)
	  && FUNC2 (parser, CPP_CLOSE_PAREN)
	  && FUNC2 (parser, CPP_EOF))
	FUNC4 (0, "property attributes must be separated by a comma");
      /* APPLE LOCAL end radar 6302949 */
      if (FUNC1 (parser, CPP_COMMA)
	  || FUNC1 (parser, CPP_NAME) /* error */)
	FUNC0 (parser);
    }
}