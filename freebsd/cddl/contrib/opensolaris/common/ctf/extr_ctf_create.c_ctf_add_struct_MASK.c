#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
struct TYPE_14__ {int /*<<< orphan*/  h_type; } ;
typedef  TYPE_2__ ctf_helem_t ;
typedef  int /*<<< orphan*/  ctf_hash_t ;
struct TYPE_15__ {int /*<<< orphan*/  ctf_structs; } ;
typedef  TYPE_3__ ctf_file_t ;
struct TYPE_13__ {scalar_t__ ctt_size; int /*<<< orphan*/  ctt_info; } ;
struct TYPE_16__ {TYPE_1__ dtd_data; } ;
typedef  TYPE_4__ ctf_dtdef_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 scalar_t__ CTF_K_FORWARD ; 
 int /*<<< orphan*/  CTF_K_STRUCT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*,int /*<<< orphan*/ ,char const*,TYPE_4__**) ; 
 TYPE_4__* FUNC2 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 TYPE_2__* FUNC3 (int /*<<< orphan*/ *,TYPE_3__*,char const*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char const*) ; 

ctf_id_t
FUNC6(ctf_file_t *fp, uint_t flag, const char *name)
{
	ctf_hash_t *hp = &fp->ctf_structs;
	ctf_helem_t *hep = NULL;
	ctf_dtdef_t *dtd;
	ctf_id_t type;

	if (name != NULL)
		hep = FUNC3(hp, fp, name, FUNC5(name));

	if (hep != NULL && FUNC4(fp, hep->h_type) == CTF_K_FORWARD)
		dtd = FUNC2(fp, type = hep->h_type);
	else if ((type = FUNC1(fp, flag, name, &dtd)) == CTF_ERR)
		return (CTF_ERR); /* errno is set for us */

	dtd->dtd_data.ctt_info = FUNC0(CTF_K_STRUCT, flag, 0);
	dtd->dtd_data.ctt_size = 0;

	return (type);
}