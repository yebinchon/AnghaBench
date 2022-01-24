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
struct TYPE_2__ {scalar_t__ static_chain_decl; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 scalar_t__ NO_PROFILE_COUNTERS ; 
 int STATIC_CHAIN_REGNUM ; 
 scalar_t__ TARGET_AUTO_PIC ; 
 scalar_t__ TARGET_GNU_AS ; 
 int /*<<< orphan*/  TARGET_NO_PIC ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*) ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 

void
FUNC4 (FILE *file, int labelno)
{
  bool indirect_call;

  /* If the function needs a static chain and the static chain
     register is r15, we use an indirect call so as to bypass
     the PLT stub in case the executable is dynamically linked,
     because the stub clobbers r15 as per 5.3.6 of the psABI.
     We don't need to do that in non canonical PIC mode.  */

  if (cfun->static_chain_decl && !TARGET_NO_PIC && !TARGET_AUTO_PIC)
    {
      FUNC3 (STATIC_CHAIN_REGNUM == 15);
      indirect_call = true;
    }
  else
    indirect_call = false;

  if (TARGET_GNU_AS)
    FUNC2 ("\t.prologue 4, r40\n", file);
  else
    FUNC2 ("\t.prologue\n\t.save ar.pfs, r40\n", file);
  FUNC2 ("\talloc out0 = ar.pfs, 8, 0, 4, 0\n", file);

  if (NO_PROFILE_COUNTERS)
    FUNC2 ("\tmov out3 = r0\n", file);
  else
    {
      char buf[20];
      FUNC0 (buf, "LP", labelno);

      if (TARGET_AUTO_PIC)
	FUNC2 ("\tmovl out3 = @gprel(", file);
      else
	FUNC2 ("\taddl out3 = @ltoff(", file);
      FUNC1 (file, buf);
      if (TARGET_AUTO_PIC)
	FUNC2 (")\n", file);
      else
	FUNC2 ("), r1\n", file);
    }

  if (indirect_call)
    FUNC2 ("\taddl r14 = @ltoff(@fptr(_mcount)), r1\n", file);
  FUNC2 ("\t;;\n", file);

  FUNC2 ("\t.save rp, r42\n", file);
  FUNC2 ("\tmov out2 = b0\n", file);
  if (indirect_call)
    FUNC2 ("\tld8 r14 = [r14]\n\t;;\n", file);
  FUNC2 ("\t.body\n", file);
  FUNC2 ("\tmov out1 = r1\n", file);
  if (indirect_call)
    {
      FUNC2 ("\tld8 r16 = [r14], 8\n\t;;\n", file);
      FUNC2 ("\tmov b6 = r16\n", file);
      FUNC2 ("\tld8 r1 = [r14]\n", file);
      FUNC2 ("\tbr.call.sptk.many b0 = b6\n\t;;\n", file);
    }
  else
    FUNC2 ("\tbr.call.sptk.many b0 = _mcount\n\t;;\n", file);
}