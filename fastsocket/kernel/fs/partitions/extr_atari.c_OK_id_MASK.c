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
 scalar_t__ FUNC0 (char*,char*,int) ; 

__attribute__((used)) static inline int FUNC1(char *s)
{
	return  FUNC0 (s, "GEM", 3) == 0 || FUNC0 (s, "BGM", 3) == 0 ||
		FUNC0 (s, "LNX", 3) == 0 || FUNC0 (s, "SWP", 3) == 0 ||
		FUNC0 (s, "RAW", 3) == 0 ;
}