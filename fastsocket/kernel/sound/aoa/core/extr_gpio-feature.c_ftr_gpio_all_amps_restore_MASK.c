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
struct gpio_runtime {int implementation_private; } ;
struct TYPE_2__ {scalar_t__ set_master; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct gpio_runtime*,int) ; 
 int /*<<< orphan*/  FUNC1 (struct gpio_runtime*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct gpio_runtime*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct gpio_runtime*,int) ; 
 TYPE_1__ methods ; 
 scalar_t__ FUNC4 (int) ; 

__attribute__((used)) static void FUNC5(struct gpio_runtime *rt)
{
	int s;

	if (FUNC4(!rt)) return;
	s = rt->implementation_private;
	FUNC1(rt, (s>>0)&1);
	FUNC0(rt, (s>>1)&1);
	FUNC2(rt, (s>>2)&1);
	if (methods.set_master)
		FUNC3(rt, (s>>3)&1);
}