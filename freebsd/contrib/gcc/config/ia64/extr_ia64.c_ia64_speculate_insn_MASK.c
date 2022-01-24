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
typedef  scalar_t__ rtx ;
typedef  int ds_t ;
struct TYPE_2__ {scalar_t__* operand; } ;

/* Variables and functions */
 int BEGIN_CONTROL ; 
 int BEGIN_DATA ; 
 int BEGIN_SPEC ; 
 scalar_t__ COND_EXEC ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__) ; 
 scalar_t__ SET ; 
 scalar_t__ FUNC9 (scalar_t__) ; 
 scalar_t__ FUNC10 (scalar_t__) ; 
 int SPEC_MODE_FOR_EXTEND_FIRST ; 
 int SPEC_MODE_FOR_EXTEND_LAST ; 
 int SPEC_MODE_INVALID ; 
 scalar_t__ UNSPEC ; 
 int UNSPEC_LDA ; 
 int UNSPEC_LDS ; 
 int UNSPEC_LDSA ; 
 scalar_t__ FUNC11 (scalar_t__,int /*<<< orphan*/ ) ; 
 int FUNC12 (scalar_t__,int) ; 
 scalar_t__ FUNC13 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ ZERO_EXTEND ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC15 (int) ; 
 scalar_t__ FUNC16 (scalar_t__,int,int,int,int) ; 
 int FUNC17 (int /*<<< orphan*/ ) ; 
 TYPE_1__ recog_data ; 

__attribute__((used)) static int
FUNC18 (rtx insn, ds_t ts, rtx *new_pat)
{  
  rtx pat, reg, mem, mem_reg;
  int mode_no, gen_p = 1;
  bool extend_p;
  
  FUNC15 (!(ts & ~BEGIN_SPEC) && ts);
           
  pat = FUNC6 (insn);

  if (FUNC2 (pat) == COND_EXEC)
    pat = FUNC0 (pat);

  /* This should be a SET ...  */
  if (FUNC2 (pat) != SET)
    return -1;

  reg = FUNC9 (pat);
  /* ... to the general/fp register ...  */
  if (!FUNC8 (reg) || !(FUNC4 (FUNC7 (reg)) || FUNC1 (FUNC7 (reg))))
    return -1;

  /* ... from the mem ...  */
  mem = FUNC10 (pat);

  /* ... that can, possibly, be a zero_extend ...  */
  if (FUNC2 (mem) == ZERO_EXTEND)
    {
      mem = FUNC11 (mem, 0);
      extend_p = true;      
    }
  else
    extend_p = false;

  /* ... or a speculative load.  */
  if (FUNC2 (mem) == UNSPEC)
    {
      int code;
      
      code = FUNC12 (mem, 1);
      if (code != UNSPEC_LDA && code != UNSPEC_LDS && code != UNSPEC_LDSA)
	return -1;

      if ((code == UNSPEC_LDA && !(ts & BEGIN_CONTROL))
	  || (code == UNSPEC_LDS && !(ts & BEGIN_DATA))
	  || code == UNSPEC_LDSA)
	gen_p = 0;

      mem = FUNC13 (mem, 0, 0);
      FUNC15 (FUNC5 (mem));
    }

  /* Source should be a mem ...  */
  if (!FUNC5 (mem))
    return -1;

  /* ... addressed by a register.  */
  mem_reg = FUNC11 (mem, 0);
  if (!FUNC8 (mem_reg))
    return -1;
     
  /* We should use MEM's mode since REG's mode in presence of ZERO_EXTEND
     will always be DImode.  */
  mode_no = FUNC17 (FUNC3 (mem));
  
  if (mode_no == SPEC_MODE_INVALID
      || (extend_p
	  && !(SPEC_MODE_FOR_EXTEND_FIRST <= mode_no
	       && mode_no <= SPEC_MODE_FOR_EXTEND_LAST)))
    return -1;

  FUNC14 (insn);
  FUNC15 (reg == recog_data.operand[0] && mem == recog_data.operand[1]);

  *new_pat = FUNC16 (insn, ts, mode_no, gen_p != 0, extend_p);

  return gen_p;
}