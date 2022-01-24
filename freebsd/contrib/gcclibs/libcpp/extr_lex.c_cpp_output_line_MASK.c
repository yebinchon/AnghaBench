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
struct TYPE_4__ {scalar_t__ type; int flags; } ;
typedef  TYPE_1__ cpp_token ;
typedef  int /*<<< orphan*/  cpp_reader ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ CPP_EOF ; 
 int PREV_WHITE ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__ const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char,int /*<<< orphan*/ *) ; 

void
FUNC3 (cpp_reader *pfile, FILE *fp)
{
  const cpp_token *token;

  token = FUNC0 (pfile);
  while (token->type != CPP_EOF)
    {
      FUNC1 (token, fp);
      token = FUNC0 (pfile);
      if (token->flags & PREV_WHITE)
	FUNC2 (' ', fp);
    }

  FUNC2 ('\n', fp);
}