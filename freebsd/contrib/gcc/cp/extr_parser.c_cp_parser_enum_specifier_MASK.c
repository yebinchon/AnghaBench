#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_13__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_1__ cp_parser ;

/* Variables and functions */
 scalar_t__ ATTR_FLAG_TYPE_IN_PLACE ; 
 int /*<<< orphan*/  CPP_CLOSE_BRACE ; 
 int /*<<< orphan*/  CPP_NAME ; 
 int /*<<< orphan*/  CPP_OPEN_BRACE ; 
 scalar_t__ NULL_TREE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (TYPE_1__*) ; 
 scalar_t__ FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,scalar_t__) ; 
 scalar_t__ FUNC7 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 (scalar_t__*,scalar_t__,int) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 scalar_t__ FUNC15 () ; 
 scalar_t__ FUNC16 (scalar_t__) ; 

__attribute__((used)) static tree
FUNC17 (cp_parser* parser)
{
  tree identifier;
  tree type;
  tree attributes;

  /* Parse tentatively so that we can back up if we don't find a
     enum-specifier.  */
  FUNC9 (parser);

  /* Caller guarantees that the current token is 'enum', an identifier
     possibly follows, and the token after that is an opening brace.
     If we don't have an identifier, fabricate an anonymous name for
     the enumeration being defined.  */
  FUNC0 (parser->lexer);

  attributes = FUNC4 (parser);

  if (FUNC1 (parser->lexer, CPP_NAME))
    identifier = FUNC7 (parser);
  else
    identifier = FUNC15 ();

  /* Look for the `{' but don't consume it yet.  */
  if (!FUNC1 (parser->lexer, CPP_OPEN_BRACE))
    FUNC11 (parser);

  if (!FUNC8 (parser))
    return NULL_TREE;

  /* Issue an error message if type-definitions are forbidden here.  */
  if (!FUNC5 (parser))
    type = error_mark_node;
  else
    /* Create the new type.  We do this before consuming the opening
       brace so the enum will be recorded as being on the line of its
       tag (or the 'enum' keyword, if there is no tag).  */
    type = FUNC16 (identifier);
  
  /* Consume the opening brace.  */
  FUNC0 (parser->lexer);

  if (type == error_mark_node)
    {
      FUNC12 (parser);
      return error_mark_node;
    }

  /* If the next token is not '}', then there are some enumerators.  */
  if (FUNC2 (parser->lexer, CPP_CLOSE_BRACE))
    FUNC6 (parser, type);

  /* Consume the final '}'.  */
  FUNC10 (parser, CPP_CLOSE_BRACE, "`}'");

  /* Look for trailing attributes to apply to this enumeration, and
     apply them if appropriate.  */
  if (FUNC3 (parser))
    {
      tree trailing_attr = FUNC4 (parser);
      FUNC13 (&type,
			     trailing_attr,
			     (int) ATTR_FLAG_TYPE_IN_PLACE);
    }

  /* Finish up the enumeration.  */
  FUNC14 (type);

  return type;
}