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
typedef  int /*<<< orphan*/  u32 ;
typedef  scalar_t__ u16 ;
struct nlattr {int dummy; } ;
struct ip_set {int /*<<< orphan*/ * variant; } ;
struct bitmap_port {scalar_t__ memsize; int /*<<< orphan*/  timeout; } ;

/* Variables and functions */
 int ENOMEM ; 
 int /*<<< orphan*/  GFP_KERNEL ; 
 size_t IPSET_ATTR_PORT ; 
 size_t IPSET_ATTR_PORT_TO ; 
 size_t IPSET_ATTR_TIMEOUT ; 
 int IPSET_ERR_PROTOCOL ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  bitmap_port ; 
 int /*<<< orphan*/  FUNC1 (struct ip_set*) ; 
 int /*<<< orphan*/  bitmap_tport ; 
 int /*<<< orphan*/  FUNC2 (struct ip_set*,struct bitmap_port*,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (struct nlattr**,size_t) ; 
 scalar_t__ FUNC4 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC5 (struct nlattr**,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct nlattr*) ; 
 int /*<<< orphan*/  FUNC7 (struct bitmap_port*) ; 
 struct bitmap_port* FUNC8 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (char*,scalar_t__) ; 
 scalar_t__ FUNC10 (int) ; 

__attribute__((used)) static int
FUNC11(struct ip_set *set, struct nlattr *tb[],
		 u32 flags)
{
	struct bitmap_port *map;
	u16 first_port, last_port;

	if (FUNC10(!FUNC3(tb, IPSET_ATTR_PORT) ||
		     !FUNC3(tb, IPSET_ATTR_PORT_TO) ||
		     !FUNC5(tb, IPSET_ATTR_TIMEOUT)))
		return -IPSET_ERR_PROTOCOL;

	first_port = FUNC4(tb[IPSET_ATTR_PORT]);
	last_port = FUNC4(tb[IPSET_ATTR_PORT_TO]);
	if (first_port > last_port) {
		u16 tmp = first_port;

		first_port = last_port;
		last_port = tmp;
	}

	map = FUNC8(sizeof(*map), GFP_KERNEL);
	if (!map)
		return -ENOMEM;

	if (tb[IPSET_ATTR_TIMEOUT]) {
		map->memsize = (last_port - first_port + 1)
			       * sizeof(unsigned long);

		if (!FUNC2(set, map, first_port, last_port)) {
			FUNC7(map);
			return -ENOMEM;
		}

		map->timeout = FUNC6(tb[IPSET_ATTR_TIMEOUT]);
		set->variant = &bitmap_tport;

		FUNC1(set);
	} else {
		map->memsize = FUNC0(0, last_port - first_port);
		FUNC9("memsize: %zu\n", map->memsize);
		if (!FUNC2(set, map, first_port, last_port)) {
			FUNC7(map);
			return -ENOMEM;
		}

		set->variant = &bitmap_port;
	}
	return 0;
}