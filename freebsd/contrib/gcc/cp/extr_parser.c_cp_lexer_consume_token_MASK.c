#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {scalar_t__ type; } ;
typedef  TYPE_1__ cp_token ;
struct TYPE_10__ {TYPE_1__* next_token; TYPE_1__* last_token; int /*<<< orphan*/  in_pragma; } ;
typedef  TYPE_2__ cp_lexer ;

/* Variables and functions */
 scalar_t__ CPP_PRAGMA_EOL ; 
 scalar_t__ CPP_PURGED ; 
 int /*<<< orphan*/  cp_lexer_debug_stream ; 
 scalar_t__ FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 TYPE_1__ eof_token ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int) ; 
 int /*<<< orphan*/  FUNC5 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static cp_token *
FUNC6 (cp_lexer* lexer)
{
  cp_token *token = lexer->next_token;

  FUNC4 (token != &eof_token);
  FUNC4 (!lexer->in_pragma || token->type != CPP_PRAGMA_EOL);

  do
    {
      lexer->next_token++;
      if (lexer->next_token == lexer->last_token)
	{
	  lexer->next_token = (cp_token *)&eof_token;
	  break;
	}

    }
  while (lexer->next_token->type == CPP_PURGED);

  FUNC2 (token);

  /* Provide debugging output.  */
  if (FUNC0 (lexer))
    {
      FUNC3 ("cp_lexer: consuming token: ", cp_lexer_debug_stream);
      FUNC1 (cp_lexer_debug_stream, token);
      FUNC5 ('\n', cp_lexer_debug_stream);
    }

  return token;
}