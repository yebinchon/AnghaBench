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
typedef  scalar_t__ uint ;
typedef  int /*<<< orphan*/  __be32 ;

/* Variables and functions */
 scalar_t__ XLOG_HEADER_MAGIC_NUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static inline uint FUNC1(char *ptr)
{
	if (FUNC0(*(__be32 *)ptr) == XLOG_HEADER_MAGIC_NUM)
		return FUNC0(*((__be32 *)ptr + 1));
	else
		return FUNC0(*(__be32 *)ptr);
}