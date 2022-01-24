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
typedef  int /*<<< orphan*/  tree ;
typedef  int /*<<< orphan*/  c_parser ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_ASM ; 
 int c_lex_string_translate ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC6 (c_parser *parser)
{
  tree str;
  FUNC5 (FUNC2 (parser, RID_ASM));
  /* ??? Follow the C++ parser rather than using the
     c_lex_string_translate kludge.  */
  c_lex_string_translate = 0;
  FUNC1 (parser);
  if (!FUNC3 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      c_lex_string_translate = 1;
      return NULL_TREE;
    }
  str = FUNC0 (parser);
  c_lex_string_translate = 1;
  if (!FUNC3 (parser, CPP_CLOSE_PAREN, "expected %<)%>"))
    {
      FUNC4 (parser, CPP_CLOSE_PAREN, NULL);
      return NULL_TREE;
    }
  return str;
}