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
 int /*<<< orphan*/  FUNC0 (int,char*,char*) ; 
 int /*<<< orphan*/  svgfile ; 

void FUNC1(void)
{
	if (!svgfile)
		return;

	FUNC0(0,	"Running", "sample");
	FUNC0(100,	"Idle","c1");
	FUNC0(200,	"Deeper Idle", "c3");
	FUNC0(350,	"Deepest Idle", "c6");
	FUNC0(550,	"Sleeping", "process2");
	FUNC0(650,	"Waiting for cpu", "waiting");
	FUNC0(800,	"Blocked on IO", "blocked");
}