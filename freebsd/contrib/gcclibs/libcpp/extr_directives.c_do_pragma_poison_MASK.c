#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_5__ ;
typedef  struct TYPE_15__   TYPE_4__ ;
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {TYPE_5__* node; } ;
struct TYPE_14__ {scalar_t__ type; TYPE_1__ val; } ;
typedef  TYPE_3__ cpp_token ;
struct TYPE_13__ {int poisoned_ok; } ;
struct TYPE_15__ {TYPE_2__ state; } ;
typedef  TYPE_4__ cpp_reader ;
struct TYPE_16__ {int flags; scalar_t__ type; } ;
typedef  TYPE_5__ cpp_hashnode ;

/* Variables and functions */
 int /*<<< orphan*/  CPP_DL_ERROR ; 
 int /*<<< orphan*/  CPP_DL_WARNING ; 
 scalar_t__ CPP_EOF ; 
 scalar_t__ CPP_NAME ; 
 int NODE_DIAGNOSTIC ; 
 int /*<<< orphan*/  FUNC0 (TYPE_5__*) ; 
 int NODE_POISONED ; 
 scalar_t__ NT_MACRO ; 
 int /*<<< orphan*/  FUNC1 (TYPE_5__*) ; 
 TYPE_3__* FUNC2 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_4__*,int /*<<< orphan*/ ,char*,...) ; 

__attribute__((used)) static void
FUNC4 (cpp_reader *pfile)
{
  const cpp_token *tok;
  cpp_hashnode *hp;

  pfile->state.poisoned_ok = 1;
  for (;;)
    {
      tok = FUNC2 (pfile);
      if (tok->type == CPP_EOF)
	break;
      if (tok->type != CPP_NAME)
	{
	  FUNC3 (pfile, CPP_DL_ERROR,
		     "invalid #pragma GCC poison directive");
	  break;
	}

      hp = tok->val.node;
      if (hp->flags & NODE_POISONED)
	continue;

      if (hp->type == NT_MACRO)
	FUNC3 (pfile, CPP_DL_WARNING, "poisoning existing macro \"%s\"",
		   FUNC0 (hp));
      FUNC1 (hp);
      hp->flags |= NODE_POISONED | NODE_DIAGNOSTIC;
    }
  pfile->state.poisoned_ok = 0;
}