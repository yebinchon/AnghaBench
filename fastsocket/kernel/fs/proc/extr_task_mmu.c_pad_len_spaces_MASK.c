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
struct seq_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct seq_file*,char*,int,char) ; 

__attribute__((used)) static void FUNC1(struct seq_file *m, int len)
{
	len = 25 + sizeof(void*) * 6 - len;
	if (len < 1)
		len = 1;
	FUNC0(m, "%*c", len, ' ');
}