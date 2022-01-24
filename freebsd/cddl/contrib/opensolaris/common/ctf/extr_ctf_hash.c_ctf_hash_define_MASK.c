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
typedef  int /*<<< orphan*/  ushort_t ;
typedef  int /*<<< orphan*/  uint_t ;
struct TYPE_3__ {int /*<<< orphan*/  h_type; } ;
typedef  TYPE_1__ ctf_helem_t ;
typedef  int /*<<< orphan*/  ctf_hash_t ;
typedef  int /*<<< orphan*/  ctf_file_t ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 char* FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char const*) ; 

int
FUNC4(ctf_hash_t *hp, ctf_file_t *fp, ushort_t type, uint_t name)
{
	const char *str = FUNC2(fp, name);
	ctf_helem_t *hep = FUNC1(hp, fp, str, FUNC3(str));

	if (hep == NULL)
		return (FUNC0(hp, fp, type, name));

	hep->h_type = type;
	return (0);
}