#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {char* buffer; int /*<<< orphan*/  fields; void* insn; } ;
typedef  TYPE_1__ mep_insn ;
struct TYPE_8__ {int /*<<< orphan*/ * isas; } ;
typedef  int /*<<< orphan*/  CGEN_BITSET ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CGEN_INT_INSN_P ; 
 int CGEN_MAX_INSN_SIZE ; 
 int /*<<< orphan*/  MEP_COP_ISA ; 
 int /*<<< orphan*/  MEP_CORE_ISA ; 
 int FUNC1 (void*) ; 
 scalar_t__ VLIW ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 TYPE_4__* gas_cgen_cpu_desc ; 
 int /*<<< orphan*/  FUNC8 (void*,char*,int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 () ; 
 void* FUNC10 (TYPE_4__*,char*,int /*<<< orphan*/ *,char*,void*) ; 
 void* FUNC11 (TYPE_4__*,char*,int /*<<< orphan*/ *,char*,char**) ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (TYPE_1__) ; 
 scalar_t__ mode ; 
 scalar_t__ num_insns_saved ; 
 scalar_t__ pluspresent ; 

void
FUNC15 (char * str)
{
  static CGEN_BITSET* isas = NULL;
  char * errmsg;

  /* Initialize GAS's cgen interface for a new instruction.  */
  FUNC9 ();

  /* There are two possible modes: core and vliw.  We have to assemble
     differently for each.

     Core Mode:  We assemble normally.  All instructions are on a
                 single line and are made up of one mnemonic and one
                 set of operands.
     VLIW Mode:  Vliw combinations are indicated as follows:

		       core insn
		     + copro insn

                 We want to handle the general case where more than
                 one instruction can be preceeded by a +.  This will
                 happen later if we add support for internally parallel
                 coprocessors.  We'll make the parsing nice and general
                 so that it can handle an arbitrary number of insns
                 with leading +'s.  The actual checking for valid
                 combinations is done elsewhere.  */

  /* Initialize the isa to refer to the core.  */
  if (isas == NULL)
    isas = FUNC6 (& MEP_CORE_ISA);
  else
    {
      FUNC5 (isas);
      FUNC7 (isas, & MEP_CORE_ISA, isas);
    }
  gas_cgen_cpu_desc->isas = isas;

  if (mode == VLIW)
    {
      /* VLIW mode.  */

      int thisInsnIsCopro = 0;
      mep_insn insn;
      int i;
      
      /* Initialize the insn buffer */
	
      if (! CGEN_INT_INSN_P)
         for (i=0; i < CGEN_MAX_INSN_SIZE; i++)
            insn.buffer[i]='\0';

      /* Can't tell core / copro insns apart at parse time! */
      FUNC7 (isas, & MEP_COP_ISA, isas);

      /* Assemble the insn so we can examine its attributes. */
      insn.insn = FUNC11 (gas_cgen_cpu_desc, str,
					  &insn.fields, insn.buffer,
					  &errmsg);
      if (!insn.insn)
	{
	  FUNC3 ("%s", errmsg);
	  return;
	}
      FUNC12 (&insn);

      /* Check to see if it's a coprocessor instruction. */
      thisInsnIsCopro = FUNC1 (insn.insn);

      if (!thisInsnIsCopro)
	{
	  insn.insn = FUNC10 (gas_cgen_cpu_desc, str,
						  &insn.fields, insn.buffer,
						  insn.insn);
	  thisInsnIsCopro = FUNC1 (insn.insn);
	  FUNC12 (&insn);
	}

      if (pluspresent)
	{
	  /* A plus was present. */
	  /* Check for a + with a core insn and abort if found. */
	  if (!thisInsnIsCopro)
	    {
	      FUNC4("A core insn cannot be preceeded by a +.\n");
	      return;
	    }

	  if (num_insns_saved > 0)
	    {
	      /* There are insns in the queue. Add this one. */
	      FUNC14 (insn);
	    }
	  else
	    {
	      /* There are no insns in the queue and a plus is present.
		 This is a syntax error.  Let's not tolerate this.
		 We can relax this later if necessary.  */
	      FUNC3 (FUNC2("Invalid use of parallelization operator."));
	      return;
	    }
	}
      else
	{
	  /* No plus was present. */
	  if (num_insns_saved > 0)
	    {
	      /* There are insns saved and we came across an insn without a
		 leading +.  That's the signal to process the saved insns
		 before proceeding then treat the current insn as the first
		 in a new vliw group.  */
	      FUNC13 ();
	      num_insns_saved = 0;
	      /* mep_save_insn (insn); */
	    }
	  FUNC14 (insn);
#if 0
	  else
	    {

              /* Core Insn. Add it to the beginning of the queue. */
              mep_save_insn (insn);
	      /* gas_cgen_save_fixups(num_insns_saved); */
	    }
#endif
	}

      pluspresent = 0;
    }
  else
    {
      /* Core mode.  */

      /* Only single instructions are assembled in core mode. */
      mep_insn insn;

      /* If a leading '+' was present, issue an error.
	 That's not allowed in core mode. */
      if (pluspresent)
	{
	  FUNC3 (FUNC2("Leading plus sign not allowed in core mode"));
	  return;
	}

      insn.insn = FUNC11
	(gas_cgen_cpu_desc, str, & insn.fields, insn.buffer, & errmsg);

      if (!insn.insn)
	{
	  FUNC3 ("%s", errmsg);
	  return;
	}
      FUNC8 (insn.insn, insn.buffer,
			    FUNC0 (& insn.fields), 1, NULL);
      FUNC12 (&insn);
    }
}