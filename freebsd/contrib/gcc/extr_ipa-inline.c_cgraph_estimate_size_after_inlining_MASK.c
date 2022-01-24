#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_2__ {int insns; } ;
struct cgraph_node {TYPE_1__ global; scalar_t__ decl; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  PARAM_INLINE_CALL_COST ; 
 int FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6 (int times, struct cgraph_node *to,
				     struct cgraph_node *what)
{
  int size;
  tree fndecl = what->decl, arg;
  int call_insns = FUNC1 (PARAM_INLINE_CALL_COST);

  for (arg = FUNC0 (fndecl); arg; arg = FUNC2 (arg))
    call_insns += FUNC4 (FUNC3 (arg));
  size = (what->global.insns - call_insns) * times + to->global.insns;
  FUNC5 (size >= 0);
  return size;
}