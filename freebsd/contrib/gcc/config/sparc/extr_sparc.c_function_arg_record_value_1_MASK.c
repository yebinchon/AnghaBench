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
typedef  scalar_t__ tree ;
struct function_arg_record_value_parms {int intoffset; int slotno; int stack; int nregs; scalar_t__ named; } ;
typedef  int HOST_WIDE_INT ;

/* Variables and functions */
 int BITS_PER_WORD ; 
 scalar_t__ BLKmode ; 
 scalar_t__ COMPLEX_TYPE ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ RECORD_TYPE ; 
 int SPARC_INT_ARG_MAX ; 
 scalar_t__ TARGET_FPU ; 
 scalar_t__ FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ VECTOR_TYPE ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC12 (scalar_t__) ; 
 scalar_t__ FUNC13 (scalar_t__) ; 

__attribute__((used)) static void
FUNC14 (tree type, HOST_WIDE_INT startbitpos,
			     struct function_arg_record_value_parms *parms,
			     bool packed_p)
{
  tree field;

  /* We need to compute how many registers are needed so we can
     allocate the PARALLEL but before we can do that we need to know
     whether there are any packed fields.  The ABI obviously doesn't
     specify how structures are passed in this case, so they are
     defined to be passed in int regs if possible, otherwise memory,
     regardless of whether there are fp values present.  */

  if (! packed_p)
    for (field = FUNC8 (type); field; field = FUNC5 (field))
      {
	if (FUNC6 (field) == FIELD_DECL && FUNC1 (field))
	  {
	    packed_p = true;
	    break;
	  }
      }

  /* Compute how many registers we need.  */
  for (field = FUNC8 (type); field; field = FUNC5 (field))
    {
      if (FUNC6 (field) == FIELD_DECL)
	{
	  HOST_WIDE_INT bitpos = startbitpos;

	  if (FUNC2 (field) != 0)
	    {
	      if (FUNC13 (FUNC2 (field)))
		continue;

	      if (FUNC11 (FUNC10 (field), 1))
		bitpos += FUNC12 (field);
	    }

	  /* ??? FIXME: else assume zero offset.  */

	  if (FUNC6 (FUNC7 (field)) == RECORD_TYPE)
	    FUNC14 (FUNC7 (field),
	    				 bitpos,
					 parms,
					 packed_p);
	  else if ((FUNC3 (FUNC7 (field))
		    || FUNC6 (FUNC7 (field)) == VECTOR_TYPE)
		   && TARGET_FPU
		   && parms->named
		   && ! packed_p)
	    {
	      if (parms->intoffset != -1)
		{
		  unsigned int startbit, endbit;
		  int intslots, this_slotno;

		  startbit = parms->intoffset & -BITS_PER_WORD;
		  endbit   = (bitpos + BITS_PER_WORD - 1) & -BITS_PER_WORD;

		  intslots = (endbit - startbit) / BITS_PER_WORD;
		  this_slotno = parms->slotno + parms->intoffset
		    / BITS_PER_WORD;

		  if (intslots > 0 && intslots > SPARC_INT_ARG_MAX - this_slotno)
		    {
		      intslots = FUNC4 (0, SPARC_INT_ARG_MAX - this_slotno);
		      /* We need to pass this field on the stack.  */
		      parms->stack = 1;
		    }

		  parms->nregs += intslots;
		  parms->intoffset = -1;
		}

	      /* There's no need to check this_slotno < SPARC_FP_ARG MAX.
		 If it wasn't true we wouldn't be here.  */
	      if (FUNC6 (FUNC7 (field)) == VECTOR_TYPE
		  && FUNC0 (field) == BLKmode)
		parms->nregs += FUNC9 (FUNC7 (field));
	      else if (FUNC6 (FUNC7 (field)) == COMPLEX_TYPE)
		parms->nregs += 2;
	      else
		parms->nregs += 1;
	    }
	  else
	    {
	      if (parms->intoffset == -1)
		parms->intoffset = bitpos;
	    }
	}
    }
}