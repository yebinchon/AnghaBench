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
struct ip_set {int dummy; } ;
typedef  int /*<<< orphan*/  ip_set_id_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,struct ip_set**) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 

ip_set_id_t
FUNC3(const char *name)
{
	struct ip_set *s;
	ip_set_id_t index;

	FUNC1();
	index = FUNC0(name, &s);
	FUNC2();

	return index;
}