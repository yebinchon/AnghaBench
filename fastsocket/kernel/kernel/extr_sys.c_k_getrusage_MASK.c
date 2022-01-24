#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct task_struct {TYPE_1__* signal; } ;
struct rusage {unsigned long ru_maxrss; int /*<<< orphan*/  ru_stime; int /*<<< orphan*/  ru_utime; int /*<<< orphan*/  ru_oublock; int /*<<< orphan*/  ru_inblock; int /*<<< orphan*/  ru_majflt; int /*<<< orphan*/  ru_minflt; int /*<<< orphan*/  ru_nivcsw; int /*<<< orphan*/  ru_nvcsw; } ;
struct mm_struct {int dummy; } ;
typedef  int /*<<< orphan*/  cputime_t ;
struct TYPE_2__ {unsigned long maxrss; unsigned long cmaxrss; int /*<<< orphan*/  oublock; int /*<<< orphan*/  inblock; int /*<<< orphan*/  maj_flt; int /*<<< orphan*/  min_flt; int /*<<< orphan*/  nivcsw; int /*<<< orphan*/  nvcsw; int /*<<< orphan*/  coublock; int /*<<< orphan*/  cinblock; int /*<<< orphan*/  cmaj_flt; int /*<<< orphan*/  cmin_flt; int /*<<< orphan*/  cnivcsw; int /*<<< orphan*/  cnvcsw; int /*<<< orphan*/  cstime; int /*<<< orphan*/  cutime; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int PAGE_SIZE ; 
#define  RUSAGE_BOTH 130 
#define  RUSAGE_CHILDREN 129 
#define  RUSAGE_SELF 128 
 int RUSAGE_THREAD ; 
 int /*<<< orphan*/  FUNC1 (struct task_struct*,struct rusage*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  cputime_zero ; 
 int /*<<< orphan*/  current ; 
 struct mm_struct* FUNC4 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC5 (struct task_struct*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC6 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (struct mm_struct*) ; 
 struct task_struct* FUNC8 (struct task_struct*) ; 
 int /*<<< orphan*/  FUNC9 (unsigned long*,struct mm_struct*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct task_struct*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (struct task_struct*,unsigned long*) ; 

__attribute__((used)) static void FUNC13(struct task_struct *p, int who, struct rusage *r)
{
	struct task_struct *t;
	unsigned long flags;
	cputime_t tgutime, tgstime, utime, stime;
	unsigned long maxrss = 0;

	FUNC6((char *) r, 0, sizeof *r);
	utime = stime = cputime_zero;

	if (who == RUSAGE_THREAD) {
		FUNC10(current, &utime, &stime);
		FUNC1(p, r);
		maxrss = p->signal->maxrss;
		goto out;
	}

	if (!FUNC5(p, &flags))
		return;

	switch (who) {
		case RUSAGE_BOTH:
		case RUSAGE_CHILDREN:
			utime = p->signal->cutime;
			stime = p->signal->cstime;
			r->ru_nvcsw = p->signal->cnvcsw;
			r->ru_nivcsw = p->signal->cnivcsw;
			r->ru_minflt = p->signal->cmin_flt;
			r->ru_majflt = p->signal->cmaj_flt;
			r->ru_inblock = p->signal->cinblock;
			r->ru_oublock = p->signal->coublock;
			maxrss = p->signal->cmaxrss;

			if (who == RUSAGE_CHILDREN)
				break;

		case RUSAGE_SELF:
			FUNC11(p, &tgutime, &tgstime);
			utime = FUNC2(utime, tgutime);
			stime = FUNC2(stime, tgstime);
			r->ru_nvcsw += p->signal->nvcsw;
			r->ru_nivcsw += p->signal->nivcsw;
			r->ru_minflt += p->signal->min_flt;
			r->ru_majflt += p->signal->maj_flt;
			r->ru_inblock += p->signal->inblock;
			r->ru_oublock += p->signal->oublock;
			if (maxrss < p->signal->maxrss)
				maxrss = p->signal->maxrss;
			t = p;
			do {
				FUNC1(t, r);
				t = FUNC8(t);
			} while (t != p);
			break;

		default:
			FUNC0();
	}
	FUNC12(p, &flags);

out:
	FUNC3(utime, &r->ru_utime);
	FUNC3(stime, &r->ru_stime);

	if (who != RUSAGE_CHILDREN) {
		struct mm_struct *mm = FUNC4(p);
		if (mm) {
			FUNC9(&maxrss, mm);
			FUNC7(mm);
		}
	}
	r->ru_maxrss = maxrss * (PAGE_SIZE / 1024); /* convert pages to KBs */
}