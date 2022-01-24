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
struct musb {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct musb*,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct musb*) ; 

__attribute__((used)) static void FUNC3(struct musb *musb, int is_on)
{
	FUNC0(is_on && FUNC2(musb));
	FUNC1(musb, is_on, 0);
}