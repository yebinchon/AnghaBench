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
typedef  int /*<<< orphan*/  c_parser ;
struct TYPE_2__ {int /*<<< orphan*/  value; } ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_CLOSE_PAREN ; 
 int /*<<< orphan*/  CPP_COLON ; 
 int /*<<< orphan*/  CPP_OPEN_PAREN ; 
 int /*<<< orphan*/  CPP_SEMICOLON ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  RID_ASM ; 
 int /*<<< orphan*/  RID_CONST ; 
 int /*<<< orphan*/  RID_RESTRICT ; 
 int /*<<< orphan*/  RID_VOLATILE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int c_lex_string_translate ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static tree
FUNC14 (c_parser *parser)
{
  tree quals, str, outputs, inputs, clobbers, ret;
  bool simple;
  FUNC12 (FUNC7 (parser, RID_ASM));
  FUNC5 (parser);
  if (FUNC7 (parser, RID_VOLATILE))
    {
      quals = FUNC8 (parser)->value;
      FUNC5 (parser);
    }
  else if (FUNC7 (parser, RID_CONST)
	   || FUNC7 (parser, RID_RESTRICT))
    {
      FUNC13 (0, "%E qualifier ignored on asm",
	       FUNC8 (parser)->value);
      quals = NULL_TREE;
      FUNC5 (parser);
    }
  else
    quals = NULL_TREE;
  /* ??? Follow the C++ parser rather than using the
     c_lex_string_translate kludge.  */
  c_lex_string_translate = 0;
  if (!FUNC9 (parser, CPP_OPEN_PAREN, "expected %<(%>"))
    {
      c_lex_string_translate = 1;
      return NULL_TREE;
    }
  str = FUNC4 (parser);
  if (FUNC6 (parser, CPP_CLOSE_PAREN))
    {
      simple = true;
      outputs = NULL_TREE;
      inputs = NULL_TREE;
      clobbers = NULL_TREE;
      goto done_asm;
    }
  if (!FUNC9 (parser, CPP_COLON, "expected %<:%> or %<)%>"))
    {
      c_lex_string_translate = 1;
      FUNC11 (parser, CPP_CLOSE_PAREN, NULL);
      return NULL_TREE;
    }
  simple = false;
  /* Parse outputs.  */
  if (FUNC6 (parser, CPP_COLON)
      || FUNC6 (parser, CPP_CLOSE_PAREN))
    outputs = NULL_TREE;
  else
    outputs = FUNC3 (parser, false);
  if (FUNC6 (parser, CPP_CLOSE_PAREN))
    {
      inputs = NULL_TREE;
      clobbers = NULL_TREE;
      goto done_asm;
    }
  if (!FUNC9 (parser, CPP_COLON, "expected %<:%> or %<)%>"))
    {
      c_lex_string_translate = 1;
      FUNC11 (parser, CPP_CLOSE_PAREN, NULL);
      return NULL_TREE;
    }
  /* Parse inputs.  */
  if (FUNC6 (parser, CPP_COLON)
      || FUNC6 (parser, CPP_CLOSE_PAREN))
    inputs = NULL_TREE;
  else
    inputs = FUNC3 (parser, true);
  if (FUNC6 (parser, CPP_CLOSE_PAREN))
    {
      clobbers = NULL_TREE;
      goto done_asm;
    }
  if (!FUNC9 (parser, CPP_COLON, "expected %<:%> or %<)%>"))
    {
      c_lex_string_translate = 1;
      FUNC11 (parser, CPP_CLOSE_PAREN, NULL);
      return NULL_TREE;
    }
  /* Parse clobbers.  */
  clobbers = FUNC2 (parser);
 done_asm:
  c_lex_string_translate = 1;
  if (!FUNC9 (parser, CPP_CLOSE_PAREN, "expected %<)%>"))
    {
      FUNC11 (parser, CPP_CLOSE_PAREN, NULL);
      return NULL_TREE;
    }
  if (!FUNC9 (parser, CPP_SEMICOLON, "expected %<;%>"))
    FUNC10 (parser);
  ret = FUNC1 (quals, FUNC0 (str, outputs, inputs,
					       clobbers, simple));
  return ret;
}