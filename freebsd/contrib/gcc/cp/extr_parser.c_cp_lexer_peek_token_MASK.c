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
typedef  int /*<<< orphan*/  cp_token ;
struct TYPE_4__ {int /*<<< orphan*/ * next_token; } ;
typedef  TYPE_1__ cp_lexer ;

/* Variables and functions */
 int /*<<< orphan*/  cp_lexer_debug_stream ; 
 scalar_t__ FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char,int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline cp_token *
FUNC4 (cp_lexer *lexer)
{
  if (FUNC0 (lexer))
    {
      FUNC2 ("cp_lexer: peeking at token: ", cp_lexer_debug_stream);
      FUNC1 (cp_lexer_debug_stream, lexer->next_token);
      FUNC3 ('\n', cp_lexer_debug_stream);
    }
  return lexer->next_token;
}