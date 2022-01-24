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
 int /*<<< orphan*/  FUNC0 (int) ; 
 int FUNC1 (unsigned long const*,int) ; 
 int FUNC2 (unsigned long const*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int,unsigned long const*) ; 

__attribute__((used)) static int FUNC4(const unsigned long *buf, int pos, int bits)
{
	int i, ord;

	if (pos < 0 || pos >= bits || !FUNC3(pos, buf))
		return -1;

	i = FUNC1(buf, bits);
	ord = 0;
	while (i < pos) {
		i = FUNC2(buf, bits, i + 1);
	     	ord++;
	}
	FUNC0(i != pos);

	return ord;
}