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
struct set_telem {int dummy; } ;
struct set_elem {int dummy; } ;
struct nlattr {int dummy; } ;
struct ip_set {int /*<<< orphan*/ * variant; } ;

/* Variables and functions */
 int ENOMEM ; 
 size_t IPSET_ATTR_SIZE ; 
 size_t IPSET_ATTR_TIMEOUT ; 
 int IPSET_ERR_PROTOCOL ; 
 int /*<<< orphan*/  IPSET_NO_TIMEOUT ; 
 scalar_t__ IP_SET_LIST_DEFAULT_SIZE ; 
 scalar_t__ IP_SET_LIST_MIN_SIZE ; 
 int /*<<< orphan*/  FUNC0 (struct ip_set*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC2 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr*) ; 
 int /*<<< orphan*/  list_set ; 
 int /*<<< orphan*/  FUNC4 (struct ip_set*) ; 
 scalar_t__ FUNC5 (int) ; 

__attribute__((used)) static int
FUNC6(struct ip_set *set, struct nlattr *tb[], u32 flags)
{
	u32 size = IP_SET_LIST_DEFAULT_SIZE;

	if (FUNC5(!FUNC2(tb, IPSET_ATTR_SIZE) ||
		     !FUNC2(tb, IPSET_ATTR_TIMEOUT)))
		return -IPSET_ERR_PROTOCOL;

	if (tb[IPSET_ATTR_SIZE])
		size = FUNC1(tb[IPSET_ATTR_SIZE]);
	if (size < IP_SET_LIST_MIN_SIZE)
		size = IP_SET_LIST_MIN_SIZE;

	if (tb[IPSET_ATTR_TIMEOUT]) {
		if (!FUNC0(set, size, sizeof(struct set_telem),
				   FUNC3(tb[IPSET_ATTR_TIMEOUT])))
			return -ENOMEM;

		FUNC4(set);
	} else {
		if (!FUNC0(set, size, sizeof(struct set_elem),
				   IPSET_NO_TIMEOUT))
			return -ENOMEM;
	}
	set->variant = &list_set;
	return 0;
}