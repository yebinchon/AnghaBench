#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum need_phi_state { ____Placeholder_need_phi_state } need_phi_state ;
struct TYPE_4__ {int need_phi_state; } ;
struct TYPE_3__ {int need_phi_state; } ;

/* Variables and functions */
 scalar_t__ SSA_NAME ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC1 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline enum need_phi_state
FUNC3 (tree var)
{
  if (FUNC0 (var) == SSA_NAME)
    return FUNC1 (var)->need_phi_state;
  else
    return FUNC2 (var)->need_phi_state;
}