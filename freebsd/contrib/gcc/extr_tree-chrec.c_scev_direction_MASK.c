#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  enum ev_direction { ____Placeholder_ev_direction } ev_direction ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int EV_DIR_DECREASES ; 
 int EV_DIR_GROWS ; 
 int EV_DIR_UNKNOWN ; 
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 

enum ev_direction
FUNC4 (tree chrec)
{
  tree step;

  if (!FUNC2 (chrec))
    return EV_DIR_UNKNOWN;

  step = FUNC0 (chrec);
  if (FUNC1 (step) != INTEGER_CST)
    return EV_DIR_UNKNOWN;

  if (FUNC3 (step))
    return EV_DIR_DECREASES;
  else
    return EV_DIR_GROWS;
}