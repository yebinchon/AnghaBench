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
struct alias {int flag; int /*<<< orphan*/  name; struct alias* next; } ;

/* Variables and functions */
 int ALIASINUSE ; 
 scalar_t__ aliases ; 
 scalar_t__ FUNC0 (char const*,int /*<<< orphan*/ ) ; 
 struct alias** FUNC1 (char const*) ; 

struct alias *
FUNC2(const char *name, int check)
{
	struct alias *ap;

	if (aliases == 0)
		return (NULL);
	for (ap = *FUNC1(name); ap; ap = ap->next) {
		if (FUNC0(name, ap->name)) {
			if (check && (ap->flag & ALIASINUSE))
				return (NULL);
			return (ap);
		}
	}

	return (NULL);
}