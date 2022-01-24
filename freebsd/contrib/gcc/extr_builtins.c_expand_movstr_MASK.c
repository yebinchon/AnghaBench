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
typedef  int /*<<< orphan*/  tree ;
struct insn_data {scalar_t__ (* genfun ) (scalar_t__,scalar_t__,scalar_t__) ;TYPE_1__* operand; } ;
typedef  scalar_t__ rtx ;
struct TYPE_2__ {scalar_t__ mode; } ;

/* Variables and functions */
 int CODE_FOR_movstr ; 
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  HAVE_movstr ; 
 int /*<<< orphan*/  NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ const0_rtx ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ FUNC7 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 struct insn_data* insn_data ; 
 scalar_t__ FUNC10 (scalar_t__,int) ; 
 scalar_t__ FUNC11 (scalar_t__,scalar_t__) ; 
 scalar_t__ FUNC12 (scalar_t__,scalar_t__,scalar_t__) ; 

__attribute__((used)) static rtx
FUNC13 (tree dest, tree src, rtx target, int endp)
{
  rtx end;
  rtx dest_mem;
  rtx src_mem;
  rtx insn;
  const struct insn_data * data;

  if (!HAVE_movstr)
    return 0;

  dest_mem = FUNC9 (dest, NULL);
  src_mem = FUNC9 (src, NULL);
  if (!endp)
    {
      target = FUNC5 (Pmode, FUNC1 (dest_mem, 0));
      dest_mem = FUNC11 (dest_mem, target);
      end = FUNC8 (Pmode);
    }
  else
    {
      if (target == 0 || target == const0_rtx)
	{
	  end = FUNC8 (Pmode);
	  if (target == 0)
	    target = end;
	}
      else
	end = target;
    }

  data = insn_data + CODE_FOR_movstr;

  if (data->operand[0].mode != VOIDmode)
    end = FUNC7 (data->operand[0].mode, end);

  insn = data->genfun (end, dest_mem, src_mem);

  FUNC6 (insn);

  FUNC2 (insn);

  /* movstr is supposed to set end to the address of the NUL
     terminator.  If the caller requested a mempcpy-like return value,
     adjust it.  */
  if (endp == 1 && target != const0_rtx)
    {
      rtx tem = FUNC10 (FUNC7 (FUNC0 (target), end), 1);
      FUNC3 (target, FUNC4 (tem, NULL_RTX));
    }

  return target;
}