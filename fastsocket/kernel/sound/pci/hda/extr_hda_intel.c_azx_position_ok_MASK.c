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
typedef  int u32 ;
struct azx_dev {int start_wallclk; int period_wallclk; unsigned int period_bytes; } ;
struct azx {size_t dev_index; } ;

/* Variables and functions */
 int /*<<< orphan*/  WALLCLK ; 
 scalar_t__ FUNC0 (int,char*) ; 
 unsigned int FUNC1 (struct azx*,struct azx_dev*,int) ; 
 int FUNC2 (struct azx*,int /*<<< orphan*/ ) ; 
 scalar_t__* bdl_pos_adj ; 

__attribute__((used)) static int FUNC3(struct azx *chip, struct azx_dev *azx_dev)
{
	u32 wallclk;
	unsigned int pos;

	wallclk = FUNC2(chip, WALLCLK) - azx_dev->start_wallclk;
	if (wallclk < (azx_dev->period_wallclk * 2) / 3)
		return -1;	/* bogus (too early) interrupt */

	pos = FUNC1(chip, azx_dev, true);

	if (FUNC0(!azx_dev->period_bytes,
		      "hda-intel: zero azx_dev->period_bytes"))
		return -1; /* this shouldn't happen! */
	if (wallclk < (azx_dev->period_wallclk * 5) / 4 &&
	    pos % azx_dev->period_bytes > azx_dev->period_bytes / 2)
		/* NG - it's below the first next period boundary */
		return bdl_pos_adj[chip->dev_index] ? 0 : -1;
	azx_dev->start_wallclk += wallclk;
	return 1; /* OK, it's fine */
}