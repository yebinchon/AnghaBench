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
struct lx6464es {int /*<<< orphan*/  lock; int /*<<< orphan*/  playback_stream; int /*<<< orphan*/  capture_stream; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct lx6464es*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,unsigned long) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,unsigned long) ; 

__attribute__((used)) static void FUNC4(unsigned long data)
{
	struct lx6464es *chip = (struct lx6464es *)data;
	unsigned long flags;

	FUNC1("->lx_trigger_tasklet\n");

	FUNC2(&chip->lock, flags);
	FUNC0(chip, &chip->capture_stream);
	FUNC0(chip, &chip->playback_stream);
	FUNC3(&chip->lock, flags);
}