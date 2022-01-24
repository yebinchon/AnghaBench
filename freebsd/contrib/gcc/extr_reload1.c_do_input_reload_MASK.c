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
struct reload {scalar_t__ in; scalar_t__ in_reg; scalar_t__ out_reg; scalar_t__ reg_rtx; scalar_t__ when_needed; scalar_t__ out; } ;
struct insn_chain {scalar_t__ insn; } ;
typedef  scalar_t__ rtx ;

/* Variables and functions */
 size_t FIRST_PSEUDO_REGISTER ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 size_t FUNC1 (scalar_t__) ; 
 scalar_t__ FUNC2 (scalar_t__) ; 
 scalar_t__ RELOAD_FOR_INPUT ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,size_t) ; 
 scalar_t__ FUNC4 (scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__,int,size_t) ; 
 int /*<<< orphan*/  FUNC6 (struct insn_chain*,scalar_t__,scalar_t__,int) ; 
 scalar_t__ optimize ; 
 size_t* reg_reloaded_contents ; 
 int /*<<< orphan*/  reg_reloaded_valid ; 
 scalar_t__* regno_reg_rtx ; 
 scalar_t__* reload_inherited ; 
 scalar_t__* reload_override_in ; 
 size_t* reload_spill_index ; 
 scalar_t__ rld ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__* spill_reg_store ; 
 scalar_t__* spill_reg_stored_to ; 

__attribute__((used)) static void
FUNC8 (struct insn_chain *chain, struct reload *rl, int j)
{
  rtx insn = chain->insn;
  rtx old = (rl->in && FUNC0 (rl->in)
	     ? rl->in_reg : rl->in);

  if (old != 0
      /* AUTO_INC reloads need to be handled even if inherited.  We got an
	 AUTO_INC reload if reload_out is set but reload_out_reg isn't.  */
      && (! reload_inherited[j] || (rl->out && ! rl->out_reg))
      && ! FUNC7 (rl->reg_rtx, old)
      && rl->reg_rtx != 0)
    FUNC6 (chain, rld + j, old, j);

  /* When inheriting a wider reload, we have a MEM in rl->in,
     e.g. inheriting a SImode output reload for
     (mem:HI (plus:SI (reg:SI 14 fp) (const_int 10)))  */
  if (optimize && reload_inherited[j] && rl->in
      && FUNC0 (rl->in)
      && FUNC0 (rl->in_reg)
      && reload_spill_index[j] >= 0
      && FUNC3 (reg_reloaded_valid, reload_spill_index[j]))
    rl->in = regno_reg_rtx[reg_reloaded_contents[reload_spill_index[j]]];

  /* If we are reloading a register that was recently stored in with an
     output-reload, see if we can prove there was
     actually no need to store the old value in it.  */

  if (optimize
      /* Only attempt this for input reloads; for RELOAD_OTHER we miss
	 that there may be multiple uses of the previous output reload.
	 Restricting to RELOAD_FOR_INPUT is mostly paranoia.  */
      && rl->when_needed == RELOAD_FOR_INPUT
      && (reload_inherited[j] || reload_override_in[j])
      && rl->reg_rtx
      && FUNC2 (rl->reg_rtx)
      && spill_reg_store[FUNC1 (rl->reg_rtx)] != 0
#if 0
      /* There doesn't seem to be any reason to restrict this to pseudos
	 and doing so loses in the case where we are copying from a
	 register of the wrong class.  */
      && (REGNO (spill_reg_stored_to[REGNO (rl->reg_rtx)])
	  >= FIRST_PSEUDO_REGISTER)
#endif
      /* The insn might have already some references to stackslots
	 replaced by MEMs, while reload_out_reg still names the
	 original pseudo.  */
      && (FUNC4 (insn,
			 spill_reg_stored_to[FUNC1 (rl->reg_rtx)])
	  || FUNC7 (spill_reg_stored_to[FUNC1 (rl->reg_rtx)],
			  rl->out_reg)))
    FUNC5 (insn, j, FUNC1 (rl->reg_rtx));
}