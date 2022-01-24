#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  preds; } ;
struct TYPE_7__ {int /*<<< orphan*/  decl; } ;
struct TYPE_5__ {int /*<<< orphan*/  (* missing_noreturn_ok_p ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_1__ function; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_4__* EXIT_BLOCK_PTR ; 
 int /*<<< orphan*/  OPT_Wmissing_noreturn ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_3__* cfun ; 
 TYPE_2__ lang_hooks ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ warn_missing_noreturn ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static unsigned int
FUNC4 (void)
{
  if (warn_missing_noreturn
      && !FUNC1 (cfun->decl)
      && FUNC0 (EXIT_BLOCK_PTR->preds) == 0
      && !lang_hooks.function.missing_noreturn_ok_p (cfun->decl))
    FUNC3 (OPT_Wmissing_noreturn, "%Jfunction might be possible candidate "
	     "for attribute %<noreturn%>",
	     cfun->decl);
  return 0;
}