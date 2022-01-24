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
struct audit_buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct audit_buffer*,char*) ; 
 int /*<<< orphan*/  FUNC1 (struct audit_buffer*,char*) ; 

void FUNC2(struct audit_buffer *ab, char *key)
{
	FUNC0(ab, " key=");
	if (key)
		FUNC1(ab, key);
	else
		FUNC0(ab, "(null)");
}