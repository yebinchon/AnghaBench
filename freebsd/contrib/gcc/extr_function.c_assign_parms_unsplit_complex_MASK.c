#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct assign_parm_data_all {int /*<<< orphan*/  conversion_insns; scalar_t__ orig_fnargs; } ;
typedef  scalar_t__ rtx ;
typedef  enum machine_mode { ____Placeholder_machine_mode } machine_mode ;
struct TYPE_3__ {scalar_t__ (* split_complex_arg ) (int /*<<< orphan*/ ) ;} ;
struct TYPE_4__ {TYPE_1__ calls; } ;
typedef  int /*<<< orphan*/  HOST_WIDE_INT ;

/* Variables and functions */
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC16 () ; 
 scalar_t__ FUNC17 (int,scalar_t__) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 () ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC22 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC23 (scalar_t__,scalar_t__,int) ; 
 int /*<<< orphan*/  FUNC24 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC25 (int /*<<< orphan*/ ) ; 
 TYPE_2__ targetm ; 

__attribute__((used)) static void
FUNC26 (struct assign_parm_data_all *all, tree fnargs)
{
  tree parm;
  tree orig_fnargs = all->orig_fnargs;

  for (parm = orig_fnargs; parm; parm = FUNC9 (parm))
    {
      if (FUNC10 (FUNC11 (parm)) == COMPLEX_TYPE
	  && targetm.calls.split_complex_arg (FUNC11 (parm)))
	{
	  rtx tmp, real, imag;
	  enum machine_mode inner = FUNC4 (FUNC1 (parm));

	  real = FUNC2 (fnargs);
	  imag = FUNC2 (FUNC9 (fnargs));
	  if (inner != FUNC3 (real))
	    {
	      real = FUNC17 (inner, real);
	      imag = FUNC17 (inner, imag);
	    }

	  if (FUNC8 (parm))
	    {
	      rtx rmem, imem;
	      HOST_WIDE_INT size = FUNC20 (FUNC11 (parm));

	      /* split_complex_arg put the real and imag parts in
		 pseudos.  Move them to memory.  */
	      tmp = FUNC14 (FUNC1 (parm), size,
					FUNC12 (FUNC11 (parm)));
	      FUNC23 (tmp, parm, 1);
	      rmem = FUNC13 (tmp, inner, 0);
	      imem = FUNC13 (tmp, inner, FUNC5 (inner));
	      FUNC21 (all->conversion_insns);
	      FUNC15 (rmem, real);
	      FUNC15 (imem, imag);
	      all->conversion_insns = FUNC19 ();
	      FUNC16 ();
	    }
	  else
	    tmp = FUNC18 (FUNC1 (parm), real, imag);
	  FUNC7 (parm, tmp);

	  real = FUNC0 (fnargs);
	  imag = FUNC0 (FUNC9 (fnargs));
	  if (inner != FUNC3 (real))
	    {
	      real = FUNC17 (inner, real);
	      imag = FUNC17 (inner, imag);
	    }
	  tmp = FUNC18 (FUNC1 (parm), real, imag);
	  FUNC22 (parm, tmp);
	  fnargs = FUNC9 (fnargs);
	}
      else
	{
	  FUNC7 (parm, FUNC2 (fnargs));
	  FUNC22 (parm, FUNC0 (fnargs));

	  /* Set MEM_EXPR to the original decl, i.e. to PARM,
	     instead of the copy of decl, i.e. FNARGS.  */
	  if (FUNC0 (parm) && FUNC6 (FUNC0 (parm)))
	    FUNC24 (FUNC0 (parm), parm);
	}

      fnargs = FUNC9 (fnargs);
    }
}