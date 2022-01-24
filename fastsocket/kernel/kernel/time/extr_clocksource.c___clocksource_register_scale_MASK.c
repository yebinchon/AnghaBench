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
typedef  int u32 ;
struct clocksource {int mult; int maxadj; int /*<<< orphan*/  max_idle_ns; int /*<<< orphan*/  shift; } ;

/* Variables and functions */
 int MAX_UPDATE_LENGTH ; 
 int NSEC_PER_SEC ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ *,int,int,int) ; 
 int /*<<< orphan*/  FUNC1 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC2 (struct clocksource*) ; 
 void* FUNC3 (struct clocksource*) ; 
 int /*<<< orphan*/  FUNC4 (struct clocksource*) ; 
 int /*<<< orphan*/  clocksource_mutex ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 

int FUNC8(struct clocksource *cs, u32 scale, u32 freq)
{

	/*
	 * Ideally we want to use  some of the limits used in
	 * clocksource_max_deferment, to provide a more informed
	 * MAX_UPDATE_LENGTH. But for now this just gets the
	 * register interface working properly.
	 */
	FUNC0(&cs->mult, &cs->shift, freq,
				      NSEC_PER_SEC/scale,
				      MAX_UPDATE_LENGTH*scale);

	/*
	 * for clocksources that have large mults, to avoid overflow.
	 * Since mult may be adjusted by ntp, add an safety extra margin
	 *
	 */
	cs->maxadj = FUNC3(cs);
	while ((cs->mult + cs->maxadj < cs->mult)
		|| (cs->mult - cs->maxadj > cs->mult)) {
		cs->mult >>= 1;
		cs->shift--;
		cs->maxadj = FUNC3(cs);
	}

	cs->max_idle_ns = FUNC4(cs);

	FUNC6(&clocksource_mutex);
	FUNC1(cs);
	FUNC2(cs);
	FUNC5();
	FUNC7(&clocksource_mutex);
	return 0;
}