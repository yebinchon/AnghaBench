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
struct pll_min_max {int max_vco; int p_transition_clk; int p_inc_lo; int p_inc_hi; int min_p; int max_p; int min_n; int max_n; int ref_clk; int min_m; int max_m; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,...) ; 
 int FUNC1 (int,int) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int FUNC4 (int,int,int,int,int,int,int /*<<< orphan*/ ) ; 
 int FUNC5 (int,int,int,int) ; 
 struct pll_min_max* plls ; 
 scalar_t__ FUNC6 (int,int,int*,int*) ; 
 scalar_t__ FUNC7 (int,int,int*,int*) ; 

__attribute__((used)) static int FUNC8(int index, int clock, u32 *retm1, u32 *retm2,
			   u32 *retn, u32 *retp1, u32 *retp2, u32 *retclock)
{
	u32 m1, m2, n, p1, p2, n1, testm;
	u32 f_vco, p, p_best = 0, m, f_out = 0;
	u32 err_max, err_target, err_best = 10000000;
	u32 n_best = 0, m_best = 0, f_best, f_err;
	u32 p_min, p_max, p_inc, div_max;
	struct pll_min_max *pll = &plls[index];

	/* Accept 0.5% difference, but aim for 0.1% */
	err_max = 5 * clock / 1000;
	err_target = clock / 1000;

	FUNC0("Clock is %d\n", clock);

	div_max = pll->max_vco / clock;

	p_inc = (clock <= pll->p_transition_clk) ? pll->p_inc_lo : pll->p_inc_hi;
	p_min = p_inc;
	p_max = FUNC1(div_max, p_inc);
	if (p_min < pll->min_p)
		p_min = pll->min_p;
	if (p_max > pll->max_p)
		p_max = pll->max_p;

	FUNC0("p range is %d-%d (%d)\n", p_min, p_max, p_inc);

	p = p_min;
	do {
		if (FUNC7(index, p, &p1, &p2)) {
			FUNC3("cannot split p = %d\n", p);
			p += p_inc;
			continue;
		}
		n = pll->min_n;
		f_vco = clock * p;

		do {
			m = FUNC2(f_vco * n, pll->ref_clk) / pll->ref_clk;
			if (m < pll->min_m)
				m = pll->min_m + 1;
			if (m > pll->max_m)
				m = pll->max_m - 1;
			for (testm = m - 1; testm <= m; testm++) {
				f_out = FUNC5(index, testm, n, p);
				if (FUNC6(index, testm, &m1, &m2)) {
					FUNC3("cannot split m = %d\n",
						testm);
					continue;
				}
				if (clock > f_out)
					f_err = clock - f_out;
				else/* slightly bias the error for bigger clocks */
					f_err = f_out - clock + 1;

				if (f_err < err_best) {
					m_best = testm;
					n_best = n;
					p_best = p;
					f_best = f_out;
					err_best = f_err;
				}
			}
			n++;
		} while ((n <= pll->max_n) && (f_out >= clock));
		p += p_inc;
	} while ((p <= p_max));

	if (!m_best) {
		FUNC3("cannot find parameters for clock %d\n", clock);
		return 1;
	}
	m = m_best;
	n = n_best;
	p = p_best;
	FUNC6(index, m, &m1, &m2);
	FUNC7(index, p, &p1, &p2);
	n1 = n - 2;

	FUNC0("m, n, p: %d (%d,%d), %d (%d), %d (%d,%d), "
		"f: %d (%d), VCO: %d\n",
		m, m1, m2, n, n1, p, p1, p2,
		FUNC5(index, m, n, p),
		FUNC4(index, m1, m2, n1, p1, p2, 0),
		FUNC5(index, m, n, p) * p);
	*retm1 = m1;
	*retm2 = m2;
	*retn = n1;
	*retp1 = p1;
	*retp2 = p2;
	*retclock = FUNC4(index, m1, m2, n1, p1, p2, 0);

	return 0;
}