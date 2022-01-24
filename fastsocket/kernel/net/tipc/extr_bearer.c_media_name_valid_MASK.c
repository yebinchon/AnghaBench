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
typedef  scalar_t__ u32 ;

/* Variables and functions */
 scalar_t__ TIPC_MAX_MEDIA_NAME ; 
 scalar_t__ FUNC0 (char const*) ; 
 scalar_t__ FUNC1 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  tipc_alphabet ; 

__attribute__((used)) static int FUNC2(const char *name)
{
	u32 len;

	len = FUNC0(name);
	if ((len + 1) > TIPC_MAX_MEDIA_NAME)
		return 0;
	return (FUNC1(name, tipc_alphabet) == len);
}