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
struct TYPE_2__ {unsigned int nthreads_var; } ;

/* Variables and functions */
 unsigned int FUNC0 () ; 
 int FUNC1 (double*,int) ; 
 TYPE_1__* FUNC2 (int) ; 

unsigned
FUNC3 (void)
{
  unsigned n_onln, loadavg;
  unsigned nthreads_var = FUNC2 (false)->nthreads_var;

  n_onln = FUNC0 ();
  if (!n_onln || n_onln > nthreads_var)
    n_onln = nthreads_var;

  loadavg = 0;
#ifdef HAVE_GETLOADAVG
  {
    double dloadavg[3];
    if (getloadavg (dloadavg, 3) == 3)
      {
	/* Add 0.1 to get a kind of biased rounding.  */
	loadavg = dloadavg[2] + 0.1;
      }
  }
#endif

  if (loadavg >= n_onln)
    return 1;
  else
    return n_onln - loadavg;
}