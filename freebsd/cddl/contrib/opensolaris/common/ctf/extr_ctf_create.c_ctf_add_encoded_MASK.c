#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_4__ ;
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;
struct TYPE_9__ {int /*<<< orphan*/  cte_bits; } ;
typedef  TYPE_3__ ctf_encoding_t ;
struct TYPE_7__ {TYPE_3__ dtu_enc; } ;
struct TYPE_8__ {int /*<<< orphan*/  ctt_size; int /*<<< orphan*/  ctt_info; } ;
struct TYPE_10__ {TYPE_1__ dtd_u; TYPE_2__ dtd_data; } ;
typedef  TYPE_4__ ctf_dtdef_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int NBBY ; 
 int FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char const*,TYPE_4__**) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static ctf_id_t
FUNC5(ctf_file_t *fp, uint_t flag,
    const char *name, const ctf_encoding_t *ep, uint_t kind)
{
	ctf_dtdef_t *dtd;
	ctf_id_t type;

	if (ep == NULL)
		return (FUNC4(fp, EINVAL));

	if ((type = FUNC3(fp, flag, name, &dtd)) == CTF_ERR)
		return (CTF_ERR); /* errno is set for us */

	dtd->dtd_data.ctt_info = FUNC0(kind, flag, 0);
	dtd->dtd_data.ctt_size = FUNC2(FUNC1(ep->cte_bits, NBBY) / NBBY);
	dtd->dtd_u.dtu_enc = *ep;

	return (type);
}