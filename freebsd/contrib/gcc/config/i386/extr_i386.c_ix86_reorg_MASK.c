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

/* Variables and functions */
 scalar_t__ TARGET_FOUR_JUMP_LIMIT ; 
 scalar_t__ TARGET_PAD_RETURNS ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 scalar_t__ optimize ; 
 int /*<<< orphan*/  optimize_size ; 

__attribute__((used)) static void
FUNC2 (void)
{
  if (TARGET_PAD_RETURNS && optimize && !optimize_size)
    FUNC1 ();
  if (TARGET_FOUR_JUMP_LIMIT && optimize && !optimize_size)
    FUNC0 ();
}