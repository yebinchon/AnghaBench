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
struct TYPE_2__ {struct unw_reg_state* next; } ;
struct unw_state_record {TYPE_1__ curr; } ;
struct unw_reg_state {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct unw_reg_state*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,struct unw_reg_state*,int) ; 

__attribute__((used)) static void
FUNC3 (struct unw_state_record *sr)
{
  struct unw_reg_state *rs = sr->curr.next;

  if (!rs)
    FUNC0 ();
  FUNC2 (&sr->curr, rs, sizeof(*rs));
  FUNC1 (rs);
}