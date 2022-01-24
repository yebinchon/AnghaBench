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
typedef  int /*<<< orphan*/  tree ;
struct TYPE_2__ {int /*<<< orphan*/  padding; } ;

/* Variables and functions */
 int /*<<< orphan*/  cxx_pp ; 
 TYPE_1__* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pp_before ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char const* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  pp_none ; 
 int /*<<< orphan*/  FUNC3 () ; 

__attribute__((used)) static const char *
FUNC4 (tree p, int v)
{
  FUNC3 ();
  FUNC0 (cxx_pp)->padding = v ? pp_before : pp_none;
  FUNC1 (cxx_pp, p);
  return FUNC2 (cxx_pp);
}