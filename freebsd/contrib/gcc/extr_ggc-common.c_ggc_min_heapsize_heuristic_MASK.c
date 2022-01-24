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
struct rlimit {int rlim_cur; } ;
typedef  int rlim_t ;

/* Variables and functions */
 double FUNC0 (double,int) ; 
 double FUNC1 (double,int) ; 
 int /*<<< orphan*/  RLIMIT_RSS ; 
 scalar_t__ RLIM_INFINITY ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,struct rlimit*) ; 
 int FUNC3 () ; 
 double FUNC4 (double) ; 
 scalar_t__ FUNC5 () ; 
 double FUNC6 () ; 

int
/* APPLE LOCAL retune gc params 6124839 */
FUNC7 (bool optimize)
{
  double phys_kbytes = FUNC6();
  double limit_kbytes = FUNC4 (phys_kbytes * 2);

  phys_kbytes /= 1024; /* Convert to Kbytes.  */
  limit_kbytes /= 1024;

  /* The heuristic is RAM/8, with a lower bound of 4M and an upper
     bound of 128M (when RAM >= 1GB).  */
  phys_kbytes /= 8;

  /* APPLE LOCAL begin retune gc params 6124839 */

  /* Additionally, on a multicore machine, we assume that we share the
     memory with others reasonably equally.  */
  phys_kbytes /= (double)FUNC5() / (2 - optimize);
  /* APPLE LOCAL end retune gc params 6124839 */

#if defined(HAVE_GETRLIMIT) && defined (RLIMIT_RSS)
  /* Try not to overrun the RSS limit while doing garbage collection.  
     The RSS limit is only advisory, so no margin is subtracted.  */
 {
   struct rlimit rlim;
   if (getrlimit (RLIMIT_RSS, &rlim) == 0
       && rlim.rlim_cur != (rlim_t) RLIM_INFINITY)
     phys_kbytes = MIN (phys_kbytes, rlim.rlim_cur / 1024);
 }
# endif

  /* Don't blindly run over our data limit; do GC at least when the
     *next* GC would be within 16Mb of the limit.  If GCC does hit the
     data limit, compilation will fail, so this tries to be
     conservative.  */
  limit_kbytes = FUNC0 (0, limit_kbytes - 16 * 1024);
  limit_kbytes = (limit_kbytes * 100) / (110 + FUNC3());
  phys_kbytes = FUNC1 (phys_kbytes, limit_kbytes);

  phys_kbytes = FUNC0 (phys_kbytes, 4 * 1024);
  phys_kbytes = FUNC1 (phys_kbytes, 128 * 1024);

  return phys_kbytes;
}