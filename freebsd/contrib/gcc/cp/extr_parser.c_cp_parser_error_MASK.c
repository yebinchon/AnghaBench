#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_3__ ;
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_10__ {int /*<<< orphan*/  value; } ;
struct TYPE_11__ {scalar_t__ type; TYPE_1__ u; } ;
typedef  TYPE_2__ cp_token ;
struct TYPE_12__ {int /*<<< orphan*/  lexer; } ;
typedef  TYPE_3__ cp_parser ;

/* Variables and functions */
 scalar_t__ CPP_KEYWORD ; 
 scalar_t__ CPP_NAME ; 
 scalar_t__ CPP_PRAGMA ; 
 int /*<<< orphan*/  FUNC0 (char const*,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 

__attribute__((used)) static void
FUNC6 (cp_parser* parser, const char* message)
{
  if (!FUNC3 (parser))
    {
      cp_token *token = FUNC1 (parser->lexer);
      /* This diagnostic makes more sense if it is tagged to the line
	 of the token we just peeked at.  */
      FUNC2 (token);

      if (token->type == CPP_PRAGMA)
	{
	  FUNC5 ("%<#pragma%> is not allowed here");
	  FUNC4 (parser, token);
	  return;
	}

      FUNC0 (message,
		     /* Because c_parser_error does not understand
			CPP_KEYWORD, keywords are treated like
			identifiers.  */
		     (token->type == CPP_KEYWORD ? CPP_NAME : token->type),
		     token->u.value);
    }
}