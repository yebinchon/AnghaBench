#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  void* uint64_t ;
struct sec_action {int setlma; int setvma; void* vma_adjust; void* lma_adjust; void* vma; void* lma; } ;
struct elfcopy {int dummy; } ;
typedef  void* int64_t ;

/* Variables and functions */
 int ECP_CHANGE_SEC_ADDR ; 
 int ECP_CHANGE_SEC_LMA ; 
 int ECP_CHANGE_SEC_VMA ; 
 int /*<<< orphan*/  EXIT_FAILURE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 struct sec_action* FUNC1 (struct elfcopy*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void
FUNC4(struct elfcopy *ecp, int optnum, const char *optname,
    char *s)
{
	struct sec_action	*sac;
	const char		*name;
	char			*v;
	char			 op;

	name = v = s;
	do {
		v++;
	} while (*v != '\0' && *v != '=' && *v != '+' && *v != '-');
	if (*v == '\0' || *(v + 1) == '\0')
		FUNC0(EXIT_FAILURE, "invalid format for %s", optname);
	op = *v;
	*v++ = '\0';
	sac = FUNC1(ecp, name, 1);
	switch (op) {
	case '=':
		if (optnum == ECP_CHANGE_SEC_LMA ||
		    optnum == ECP_CHANGE_SEC_ADDR) {
			sac->setlma = 1;
			sac->lma = (uint64_t) FUNC3(v, NULL, 0);
		}
		if (optnum == ECP_CHANGE_SEC_VMA ||
		    optnum == ECP_CHANGE_SEC_ADDR) {
			sac->setvma = 1;
			sac->vma = (uint64_t) FUNC3(v, NULL, 0);
		}
		break;
	case '+':
		if (optnum == ECP_CHANGE_SEC_LMA ||
		    optnum == ECP_CHANGE_SEC_ADDR)
			sac->lma_adjust = (int64_t) FUNC2(v, NULL, 0);
		if (optnum == ECP_CHANGE_SEC_VMA ||
		    optnum == ECP_CHANGE_SEC_ADDR)
			sac->vma_adjust = (int64_t) FUNC2(v, NULL, 0);
		break;
	case '-':
		if (optnum == ECP_CHANGE_SEC_LMA ||
		    optnum == ECP_CHANGE_SEC_ADDR)
			sac->lma_adjust = (int64_t) -FUNC2(v, NULL, 0);
		if (optnum == ECP_CHANGE_SEC_VMA ||
		    optnum == ECP_CHANGE_SEC_ADDR)
			sac->vma_adjust = (int64_t) -FUNC2(v, NULL, 0);
		break;
	default:
		break;
	}
}