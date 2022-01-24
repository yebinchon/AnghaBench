#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint_t ;
typedef  scalar_t__ ssize_t ;
struct TYPE_5__ {int /*<<< orphan*/  ctt_info; } ;
typedef  TYPE_1__ ctf_type_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_6__ {int cte_value; int /*<<< orphan*/  cte_name; } ;
typedef  TYPE_2__ ctf_enum_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 scalar_t__ CTF_K_ENUM ; 
 int /*<<< orphan*/  ECTF_NOENUMNAM ; 
 int /*<<< orphan*/  ECTF_NOTENUM ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,TYPE_1__ const*,int /*<<< orphan*/ *,scalar_t__*) ; 
 TYPE_1__* FUNC3 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 char const* FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

const char *
FUNC7(ctf_file_t *fp, ctf_id_t type, int value)
{
	ctf_file_t *ofp = fp;
	const ctf_type_t *tp;
	const ctf_enum_t *ep;
	ssize_t increment;
	uint_t n;

	if ((type = FUNC6(fp, type)) == CTF_ERR)
		return (NULL); /* errno is set for us */

	if ((tp = FUNC3(&fp, type)) == NULL)
		return (NULL); /* errno is set for us */

	if (FUNC0(fp, tp->ctt_info) != CTF_K_ENUM) {
		(void) FUNC4(ofp, ECTF_NOTENUM);
		return (NULL);
	}

	(void) FUNC2(fp, tp, NULL, &increment);

	ep = (const ctf_enum_t *)((uintptr_t)tp + increment);

	for (n = FUNC1(fp, tp->ctt_info); n != 0; n--, ep++) {
		if (ep->cte_value == value)
			return (FUNC5(fp, ep->cte_name));
	}

	(void) FUNC4(ofp, ECTF_NOENUMNAM);
	return (NULL);
}