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
 unsigned int FUNC0 (char const**) ; 
 char const** __wlp_assoc_frame ; 

__attribute__((used)) static const char *FUNC1(unsigned id)
{
	if (id >= FUNC0(__wlp_assoc_frame))
		return "unknown association frame";
	return __wlp_assoc_frame[id];
}