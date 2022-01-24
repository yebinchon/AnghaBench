#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_17__   TYPE_4__ ;
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;

/* Type definitions */
typedef  int ssize_t ;
struct TYPE_15__ {int /*<<< orphan*/  ctt_info; } ;
typedef  TYPE_2__ ctf_type_t ;
typedef  int ctf_id_t ;
struct TYPE_16__ {TYPE_1__* ctf_dmodel; } ;
typedef  TYPE_3__ ctf_file_t ;
struct TYPE_17__ {int ctr_contents; int ctr_nelems; } ;
typedef  TYPE_4__ ctf_arinfo_t ;
struct TYPE_14__ {int ctd_pointer; int ctd_int; } ;

/* Variables and functions */
 int CTF_ERR ; 
#define  CTF_K_ARRAY 131 
#define  CTF_K_ENUM 130 
#define  CTF_K_FUNCTION 129 
#define  CTF_K_POINTER 128 
 int FUNC0 (TYPE_3__*,int /*<<< orphan*/ ) ; 
 int FUNC1 (TYPE_3__*,int,TYPE_4__*) ; 
 int FUNC2 (TYPE_3__*,TYPE_2__ const*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_2__* FUNC3 (TYPE_3__**,int) ; 
 int FUNC4 (TYPE_3__*,int) ; 

ssize_t
FUNC5(ctf_file_t *fp, ctf_id_t type)
{
	const ctf_type_t *tp;
	ssize_t size;
	ctf_arinfo_t ar;

	if ((type = FUNC4(fp, type)) == CTF_ERR)
		return (-1); /* errno is set for us */

	if ((tp = FUNC3(&fp, type)) == NULL)
		return (-1); /* errno is set for us */

	switch (FUNC0(fp, tp->ctt_info)) {
	case CTF_K_POINTER:
		return (fp->ctf_dmodel->ctd_pointer);

	case CTF_K_FUNCTION:
		return (0); /* function size is only known by symtab */

	case CTF_K_ENUM:
		return (fp->ctf_dmodel->ctd_int);

	case CTF_K_ARRAY:
		/*
		 * Array size is not directly returned by stabs data.  Instead,
		 * it defines the element type and requires the user to perform
		 * the multiplication.  If ctf_get_ctt_size() returns zero, the
		 * current version of ctfconvert does not compute member sizes
		 * and we compute the size here on its behalf.
		 */
		if ((size = FUNC2(fp, tp, NULL, NULL)) > 0)
			return (size);

		if (FUNC1(fp, type, &ar) == CTF_ERR ||
		    (size = FUNC5(fp, ar.ctr_contents)) == CTF_ERR)
			return (-1); /* errno is set for us */

		return (size * ar.ctr_nelems);

	default:
		return (FUNC2(fp, tp, NULL, NULL));
	}
}