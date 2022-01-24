#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ ushort_t ;
typedef  int /*<<< orphan*/  uint_t ;
typedef  scalar_t__ ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_4__ {scalar_t__ ctt_type; int /*<<< orphan*/  ctt_info; } ;
struct TYPE_5__ {TYPE_1__ dtd_data; } ;
typedef  TYPE_2__ ctf_dtdef_t ;

/* Variables and functions */
 scalar_t__ CTF_ERR ; 
 int /*<<< orphan*/  CTF_K_TYPEDEF ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_2__**) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ **,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,scalar_t__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ctf_id_t
FUNC6(ctf_file_t *fp, uint_t flag, const char *name, ctf_id_t ref)
{
	ctf_dtdef_t *dtd;
	ctf_id_t type;
	ctf_file_t *fpd;

	fpd = fp;
	if (ref == CTF_ERR || (FUNC3(&fpd, ref) == NULL &&
	    FUNC2(fp, ref) == NULL))
		return (FUNC5(fp, EINVAL));

	if ((type = FUNC1(fp, flag, name, &dtd)) == CTF_ERR)
		return (CTF_ERR); /* errno is set for us */

	dtd->dtd_data.ctt_info = FUNC0(CTF_K_TYPEDEF, flag, 0);
	dtd->dtd_data.ctt_type = (ushort_t)ref;
	FUNC4(fp, ref);

	return (type);
}