#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  ctf_encoding_t ;

/* Variables and functions */
 scalar_t__ CTF_K_INTEGER ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_1__ const*) ; 
 scalar_t__ FUNC5 (TYPE_1__ const*) ; 
 scalar_t__ FUNC6 (TYPE_1__ const*) ; 
 scalar_t__ FUNC7 (TYPE_1__ const*) ; 

int
FUNC8(const dt_node_t *dnp)
{
	ctf_file_t *fp = dnp->dn_ctfp;
	ctf_encoding_t e;
	ctf_id_t type;

	if (FUNC4(dnp))
		return (0); /* <DYN> is an alias for void but not the same */

	if (FUNC5(dnp))
		return (0);

	if (FUNC6(dnp) || FUNC7(dnp))
		return (0);

	type = FUNC3(fp, dnp->dn_type);

	return (FUNC2(fp, type) == CTF_K_INTEGER &&
	    FUNC1(fp, type, &e) == 0 && FUNC0(e));
}