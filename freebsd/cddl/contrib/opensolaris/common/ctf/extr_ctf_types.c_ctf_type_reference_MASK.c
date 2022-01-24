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
struct TYPE_3__ {int /*<<< orphan*/  ctt_type; int /*<<< orphan*/  ctt_info; } ;
typedef  TYPE_1__ ctf_type_t ;
typedef  int /*<<< orphan*/  ctf_id_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 int /*<<< orphan*/  CTF_ERR ; 
#define  CTF_K_CONST 132 
#define  CTF_K_POINTER 131 
#define  CTF_K_RESTRICT 130 
#define  CTF_K_TYPEDEF 129 
#define  CTF_K_VOLATILE 128 
 int /*<<< orphan*/  ECTF_NOTREF ; 
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ **,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

ctf_id_t
FUNC3(ctf_file_t *fp, ctf_id_t type)
{
	ctf_file_t *ofp = fp;
	const ctf_type_t *tp;

	if ((tp = FUNC1(&fp, type)) == NULL)
		return (CTF_ERR); /* errno is set for us */

	switch (FUNC0(fp, tp->ctt_info)) {
	case CTF_K_POINTER:
	case CTF_K_TYPEDEF:
	case CTF_K_VOLATILE:
	case CTF_K_CONST:
	case CTF_K_RESTRICT:
		return (tp->ctt_type);
	default:
		return (FUNC2(ofp, ECTF_NOTREF));
	}
}