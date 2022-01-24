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
typedef  int u8 ;
struct nlattr {int dummy; } ;

/* Variables and functions */
 int* FUNC0 (struct nlattr const*) ; 
 int FUNC1 (struct nlattr const*) ; 

__attribute__((used)) static bool FUNC2(const struct nlattr *attr)
{
	const u8 *pos;
	int len;

	if (!attr)
		return true;

	pos = FUNC0(attr);
	len = FUNC1(attr);

	while (len) {
		u8 elemlen;

		if (len < 2)
			return false;
		len -= 2;

		elemlen = pos[1];
		if (elemlen > len)
			return false;

		len -= elemlen;
		pos += 2 + elemlen;
	}

	return true;
}