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
struct file {int dummy; } ;

/* Variables and functions */
 unsigned char EDB_PD3_LCDBL ; 
 int EFAULT ; 
 int EINVAL ; 
 int /*<<< orphan*/  PDDR ; 
 unsigned char FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (unsigned char,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (unsigned char*,char const*,int) ; 
 scalar_t__ FUNC3 () ; 

__attribute__((used)) static int 
FUNC4(struct file *file, const char *buffer, 
		unsigned long count, void *data)
{
	unsigned char char_value;
	int value;

	if (count < 1) {
		return -EINVAL;
	}

	if (FUNC2(&char_value, buffer, 1)) 
		return -EFAULT;

	value = char_value - '0';

	if (FUNC3()) {
		unsigned char port_d;

		port_d = FUNC0(PDDR);

		if (value) {
			port_d |= EDB_PD3_LCDBL;
		} else {
			port_d &= ~EDB_PD3_LCDBL;
		}

		FUNC1(port_d, PDDR);
	}

	return count;
}