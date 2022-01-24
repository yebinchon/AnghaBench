#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* ipa_reference_local_vars_info_t ;
struct TYPE_3__ {int /*<<< orphan*/  statics_read; int /*<<< orphan*/  statics_written; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNCTION_DECL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ VAR_DECL ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  module_statics_written ; 

__attribute__((used)) static void
FUNC4 (ipa_reference_local_vars_info_t local, 
	       tree t, bool checking_write)
{
  if (!t) return;

  if ((FUNC1 (t) == VAR_DECL || FUNC1 (t) == FUNCTION_DECL)
      && (FUNC3 (t))) 
    {
      if (checking_write)
	{
	  if (local)
	    FUNC2 (local->statics_written, FUNC0 (t));
	  /* Mark the write so we can tell which statics are
	     readonly.  */
	  FUNC2 (module_statics_written, FUNC0 (t));
	}
      else if (local)
	FUNC2 (local->statics_read, FUNC0 (t));
    }
}