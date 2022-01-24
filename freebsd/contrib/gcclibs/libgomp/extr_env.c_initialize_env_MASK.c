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

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  PTHREAD_CREATE_DETACHED ; 
 unsigned long PTHREAD_STACK_MIN ; 
 int /*<<< orphan*/  gomp_dyn_var ; 
 int /*<<< orphan*/  FUNC0 (char*,...) ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  gomp_nest_var ; 
 unsigned long gomp_nthreads_var ; 
 int /*<<< orphan*/  gomp_thread_attr ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 (char*,unsigned long*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC10 (int /*<<< orphan*/ *,unsigned long) ; 
 unsigned long FUNC11 (int) ; 

__attribute__((used)) static void __attribute__((constructor))
FUNC12 (void)
{
  unsigned long stacksize;

  /* Do a compile time check that mkomp_h.pl did good job.  */
  FUNC3 ();

  FUNC6 ();
  FUNC5 ("OMP_DYNAMIC", &gomp_dyn_var);
  FUNC5 ("OMP_NESTED", &gomp_nest_var);
  if (!FUNC7 ("OMP_NUM_THREADS", &gomp_nthreads_var))
    FUNC2 ();
  if (FUNC4 ())
    FUNC1 ();

  /* Not strictly environment related, but ordering constructors is tricky.  */
  FUNC8 (&gomp_thread_attr);
  FUNC9 (&gomp_thread_attr, PTHREAD_CREATE_DETACHED);

  if (FUNC7 ("GOMP_STACKSIZE", &stacksize))
    {
      int err;

      stacksize *= 1024;
      err = FUNC10 (&gomp_thread_attr, stacksize);

#ifdef PTHREAD_STACK_MIN
      if (err == EINVAL)
	{
	  if (stacksize < PTHREAD_STACK_MIN)
	    gomp_error ("Stack size less than minimum of %luk",
			PTHREAD_STACK_MIN / 1024ul
			+ (PTHREAD_STACK_MIN % 1024 != 0));
	  else
	    gomp_error ("Stack size larger than system limit");
	}
      else
#endif
      if (err != 0)
	FUNC0 ("Stack size change failed: %s", FUNC11 (err));
    }
}