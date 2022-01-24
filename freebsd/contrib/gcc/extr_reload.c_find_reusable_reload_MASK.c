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
typedef  enum reload_type { ____Placeholder_reload_type } reload_type ;
typedef  enum reg_class { ____Placeholder_reg_class } reg_class ;
struct TYPE_2__ {int class; scalar_t__ reg_rtx; scalar_t__ in; scalar_t__ out; int /*<<< orphan*/  opnum; int /*<<< orphan*/  when_needed; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC3 (int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 scalar_t__ RTX_AUTOINC ; 
 scalar_t__ SMALL_REGISTER_CLASSES ; 
 scalar_t__ FUNC5 (int) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (scalar_t__) ; 
 int n_reloads ; 
 int /*<<< orphan*/ * reg_class_contents ; 
 scalar_t__ FUNC9 (int,int) ; 
 TYPE_1__* rld ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 

__attribute__((used)) static int
FUNC11 (rtx *p_in, rtx out, enum reg_class class,
		      enum reload_type type, int opnum, int dont_share)
{
  rtx in = *p_in;
  int i;
  /* We can't merge two reloads if the output of either one is
     earlyclobbered.  */

  if (FUNC8 (out))
    return n_reloads;

  /* We can use an existing reload if the class is right
     and at least one of IN and OUT is a match
     and the other is at worst neutral.
     (A zero compared against anything is neutral.)

     If SMALL_REGISTER_CLASSES, don't use existing reloads unless they are
     for the same thing since that can cause us to need more reload registers
     than we otherwise would.  */

  for (i = 0; i < n_reloads; i++)
    if ((FUNC9 (class, rld[i].class)
	 || FUNC9 (rld[i].class, class))
	/* If the existing reload has a register, it must fit our class.  */
	&& (rld[i].reg_rtx == 0
	    || FUNC6 (reg_class_contents[(int) class],
				  FUNC10 (rld[i].reg_rtx)))
	&& ((in != 0 && FUNC2 (rld[i].in, in) && ! dont_share
	     && (out == 0 || rld[i].out == 0 || FUNC2 (rld[i].out, out)))
	    || (out != 0 && FUNC2 (rld[i].out, out)
		&& (in == 0 || rld[i].in == 0 || FUNC2 (rld[i].in, in))))
	&& (rld[i].out == 0 || ! FUNC8 (rld[i].out))
	&& (FUNC5 (class) || SMALL_REGISTER_CLASSES)
	&& FUNC3 (type, rld[i].when_needed, opnum, rld[i].opnum))
      return i;

  /* Reloading a plain reg for input can match a reload to postincrement
     that reg, since the postincrement's value is the right value.
     Likewise, it can match a preincrement reload, since we regard
     the preincrementation as happening before any ref in this insn
     to that register.  */
  for (i = 0; i < n_reloads; i++)
    if ((FUNC9 (class, rld[i].class)
	 || FUNC9 (rld[i].class, class))
	/* If the existing reload has a register, it must fit our
	   class.  */
	&& (rld[i].reg_rtx == 0
	    || FUNC6 (reg_class_contents[(int) class],
				  FUNC10 (rld[i].reg_rtx)))
	&& out == 0 && rld[i].out == 0 && rld[i].in != 0
	&& ((FUNC4 (in)
	     && FUNC1 (FUNC0 (rld[i].in)) == RTX_AUTOINC
	     && FUNC2 (FUNC7 (rld[i].in, 0), in))
	    || (FUNC4 (rld[i].in)
		&& FUNC1 (FUNC0 (in)) == RTX_AUTOINC
		&& FUNC2 (FUNC7 (in, 0), rld[i].in)))
	&& (rld[i].out == 0 || ! FUNC8 (rld[i].out))
	&& (FUNC5 (class) || SMALL_REGISTER_CLASSES)
	&& FUNC3 (type, rld[i].when_needed,
			     opnum, rld[i].opnum))
      {
	/* Make sure reload_in ultimately has the increment,
	   not the plain register.  */
	if (FUNC4 (in))
	  *p_in = rld[i].in;
	return i;
      }
  return n_reloads;
}