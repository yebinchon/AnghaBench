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
struct au1550_state {int /*<<< orphan*/  dma_dac; } ;

/* Variables and functions */
 int FUNC0 (struct au1550_state*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct au1550_state*) ; 

__attribute__((used)) static int
FUNC2(struct au1550_state *s)
{
	FUNC1(s);
	return FUNC0(s, &s->dma_dac);
}