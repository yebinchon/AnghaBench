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
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  const uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  C255_P ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/  const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/  const*,int /*<<< orphan*/  const*,int) ; 

__attribute__((used)) static void
FUNC4(uint16_t *d, const uint16_t *a, const uint16_t *b)
{
	uint32_t ctl;
	uint16_t t[18];

	FUNC3(t, a, sizeof t);
	ctl = FUNC1(t, b, 1);
	ctl |= FUNC0(FUNC2(t, C255_P, 0));
	FUNC2(t, C255_P, ctl);
	FUNC3(d, t, sizeof t);
}