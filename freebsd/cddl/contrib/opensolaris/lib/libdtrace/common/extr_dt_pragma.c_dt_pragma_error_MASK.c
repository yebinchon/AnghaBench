#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {scalar_t__ dn_kind; char* dn_string; struct TYPE_3__* dn_list; } ;
typedef  TYPE_1__ dt_node_t ;

/* Variables and functions */
 scalar_t__ DT_NODE_IDENT ; 
 scalar_t__ DT_NODE_STRING ; 
 int /*<<< orphan*/  D_PRAGERR ; 
 char* FUNC0 (size_t) ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char const*,char*) ; 

__attribute__((used)) static void
FUNC4(const char *prname, dt_node_t *dnp)
{
	dt_node_t *enp;
	size_t n = 0;
	char *s;

	for (enp = dnp; enp != NULL; enp = enp->dn_list) {
		if (enp->dn_kind == DT_NODE_IDENT ||
		    enp->dn_kind == DT_NODE_STRING)
			n += FUNC2(enp->dn_string) + 1;
	}

	s = FUNC0(n + 1);
	s[0] = '\0';

	for (enp = dnp; enp != NULL; enp = enp->dn_list) {
		if (enp->dn_kind == DT_NODE_IDENT ||
		    enp->dn_kind == DT_NODE_STRING) {
			(void) FUNC1(s, enp->dn_string);
			(void) FUNC1(s, " ");
		}
	}

	FUNC3(D_PRAGERR, "#%s: %s\n", prname, s);
}