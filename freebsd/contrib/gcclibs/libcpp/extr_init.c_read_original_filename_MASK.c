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
struct TYPE_11__ {scalar_t__ type; int flags; } ;
typedef  TYPE_2__ cpp_token ;
struct TYPE_10__ {int in_directive; } ;
struct TYPE_12__ {TYPE_1__ state; } ;
typedef  TYPE_3__ cpp_reader ;

/* Variables and functions */
 scalar_t__ CPP_HASH ; 
 scalar_t__ CPP_NUMBER ; 
 int PREV_WHITE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int) ; 
 TYPE_2__* FUNC2 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 

__attribute__((used)) static void
FUNC4 (cpp_reader *pfile)
{
  const cpp_token *token, *token1;

  /* Lex ahead; if the first tokens are of the form # NUM, then
     process the directive, otherwise back up.  */
  token = FUNC2 (pfile);
  if (token->type == CPP_HASH)
    {
      pfile->state.in_directive = 1;
      token1 = FUNC2 (pfile);
      FUNC0 (pfile, 1);
      pfile->state.in_directive = 0;

      /* If it's a #line directive, handle it.  */
      if (token1->type == CPP_NUMBER)
	{
	  FUNC1 (pfile, token->flags & PREV_WHITE);
	  FUNC3 (pfile);
	  return;
	}
    }

  /* Backup as if nothing happened.  */
  FUNC0 (pfile, 1);
}