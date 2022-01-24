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
 int ENAMETOOLONG ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,unsigned char) ; 

__attribute__((used)) static inline int FUNC1(unsigned char ch, char *output, int olen)
{
	if (olen < 4)
		return -ENAMETOOLONG;
	FUNC0(output, ":x%02x", ch);
	return 4;
}