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
struct sonicvibes {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  DATA ; 
 int /*<<< orphan*/  INDEX ; 
 int /*<<< orphan*/  FUNC0 (struct sonicvibes*,int /*<<< orphan*/ ) ; 
 unsigned char FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (unsigned char,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

__attribute__((used)) static unsigned char FUNC4(struct sonicvibes * sonic, unsigned char reg)
{
	unsigned char value;

	FUNC2(reg, FUNC0(sonic, INDEX));
	FUNC3(10);
	value = FUNC1(FUNC0(sonic, DATA));
	FUNC3(10);
	return value;
}