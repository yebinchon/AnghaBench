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
struct cpu_key {int dummy; } ;

/* Variables and functions */
 scalar_t__ TYPE_DIRECT ; 
 scalar_t__ TYPE_DIRENTRY ; 
 scalar_t__ TYPE_INDIRECT ; 
 scalar_t__ TYPE_STAT_DATA ; 
 scalar_t__ FUNC0 (struct cpu_key*) ; 

__attribute__((used)) static char *FUNC1(struct cpu_key *key)
{
	if (FUNC0(key) == TYPE_STAT_DATA)
		return "SD";
	if (FUNC0(key) == TYPE_DIRENTRY)
		return "DIR";
	if (FUNC0(key) == TYPE_DIRECT)
		return "DIRECT";
	if (FUNC0(key) == TYPE_INDIRECT)
		return "IND";
	return "UNKNOWN";
}