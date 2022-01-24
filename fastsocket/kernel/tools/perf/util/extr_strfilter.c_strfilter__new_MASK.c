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
struct strfilter {int /*<<< orphan*/  root; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct strfilter*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,char const**) ; 
 struct strfilter* FUNC2 (int) ; 

struct strfilter *FUNC3(const char *rules, const char **err)
{
	struct strfilter *ret = FUNC2(sizeof(struct strfilter));
	const char *ep = NULL;

	if (ret)
		ret->root = FUNC1(rules, &ep);

	if (!ret || !ret->root || *ep != '\0') {
		if (err)
			*err = ep;
		FUNC0(ret);
		ret = NULL;
	}

	return ret;
}