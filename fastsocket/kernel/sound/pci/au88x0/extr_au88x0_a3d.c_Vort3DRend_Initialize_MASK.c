#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {unsigned short xt_mode; } ;
typedef  TYPE_1__ vortex_t ;

/* Variables and functions */
#define  XT_DIAMOND 131 
#define  XT_HEADPHONE 130 
#define  XT_SPEAKER0 129 
#define  XT_SPEAKER1 128 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC8(vortex_t * v, unsigned short mode)
{
	v->xt_mode = mode;	/* this_14 */

	FUNC7(v);
	FUNC5(v);
	switch (v->xt_mode) {
	case XT_SPEAKER0:
		FUNC3(v);
		break;
	case XT_SPEAKER1:
		FUNC4(v);
		break;
	default:
	case XT_HEADPHONE:
		FUNC2(v);
		break;
	case XT_DIAMOND:
		FUNC1(v);
		break;
	}
	FUNC6(v, 0x11);
	FUNC0(v);
	return 0;
}