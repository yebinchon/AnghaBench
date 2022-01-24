#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_9__ {TYPE_1__* last_token; TYPE_1__* next_token; } ;
typedef  TYPE_2__ cp_lexer ;

/* Variables and functions */
 scalar_t__ CPP_PURGED ; 
 int /*<<< orphan*/  cp_lexer_debug_stream ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 TYPE_1__ eof_token ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,long) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cp_token *
FUNC5 (cp_lexer* lexer, size_t n)
{
  cp_token *token;

  /* N is 1-based, not zero-based.  */
  FUNC3 (n > 0);

  if (FUNC0 (lexer))
    FUNC2 (cp_lexer_debug_stream,
	     "cp_lexer: peeking ahead %ld at token: ", (long)n);

  --n;
  token = lexer->next_token;
  FUNC3 (!n || token != &eof_token);
  while (n != 0)
    {
      ++token;
      if (token == lexer->last_token)
	{
	  token = (cp_token *)&eof_token;
	  break;
	}

      if (token->type != CPP_PURGED)
	--n;
    }

  if (FUNC0 (lexer))
    {
      FUNC1 (cp_lexer_debug_stream, token);
      FUNC4 ('\n', cp_lexer_debug_stream);
    }

  return token;
}