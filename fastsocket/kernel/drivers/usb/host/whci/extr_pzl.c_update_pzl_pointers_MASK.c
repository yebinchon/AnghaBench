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
typedef  int /*<<< orphan*/  u64 ;
struct whc {int /*<<< orphan*/ * pz_list; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC1(struct whc *whc, int period, u64 addr)
{
	switch (period) {
	case 0:
		FUNC0(&whc->pz_list[0], addr);
		FUNC0(&whc->pz_list[2], addr);
		FUNC0(&whc->pz_list[4], addr);
		FUNC0(&whc->pz_list[6], addr);
		FUNC0(&whc->pz_list[8], addr);
		FUNC0(&whc->pz_list[10], addr);
		FUNC0(&whc->pz_list[12], addr);
		FUNC0(&whc->pz_list[14], addr);
		break;
	case 1:
		FUNC0(&whc->pz_list[1], addr);
		FUNC0(&whc->pz_list[5], addr);
		FUNC0(&whc->pz_list[9], addr);
		FUNC0(&whc->pz_list[13], addr);
		break;
	case 2:
		FUNC0(&whc->pz_list[3], addr);
		FUNC0(&whc->pz_list[11], addr);
		break;
	case 3:
		FUNC0(&whc->pz_list[7], addr);
		break;
	case 4:
		FUNC0(&whc->pz_list[15], addr);
		break;
	}
}