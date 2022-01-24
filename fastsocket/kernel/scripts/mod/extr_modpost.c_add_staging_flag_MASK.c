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
struct buffer {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct buffer*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char const*) ; 
 scalar_t__ FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3(struct buffer *b, const char *name)
{
	static const char *staging_dir = "drivers/staging";

	if (FUNC2(staging_dir, name, FUNC1(staging_dir)) == 0)
		FUNC0(b, "\nMODULE_INFO(staging, \"Y\");\n");
}