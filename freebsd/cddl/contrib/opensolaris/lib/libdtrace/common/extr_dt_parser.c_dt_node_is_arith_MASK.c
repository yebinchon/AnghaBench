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
typedef  scalar_t__ uint_t ;
struct TYPE_3__ {int dn_flags; int /*<<< orphan*/  dn_type; int /*<<< orphan*/ * dn_ctfp; } ;
typedef  TYPE_1__ dt_node_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
typedef  int /*<<< orphan*/  ctf_encoding_t ;

/* Variables and functions */
 scalar_t__ CTF_K_ENUM ; 
 scalar_t__ CTF_K_INTEGER ; 
 int DT_NF_COOKED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int
FUNC5(const dt_node_t *dnp)
{
	ctf_file_t *fp = dnp->dn_ctfp;
	ctf_encoding_t e;
	ctf_id_t type;
	uint_t kind;

	FUNC1(dnp->dn_flags & DT_NF_COOKED);

	type = FUNC4(fp, dnp->dn_type);
	kind = FUNC3(fp, type);

	if (kind == CTF_K_INTEGER)
		return (FUNC2(fp, type, &e) == 0 && !FUNC0(e));
	else
		return (kind == CTF_K_ENUM);
}