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
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_3__ {int /*<<< orphan*/  (* globalize_label ) (int /*<<< orphan*/ ,char*) ;} ;
struct TYPE_4__ {TYPE_1__ asm_out; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  Pmode ; 
 int /*<<< orphan*/  TARGET_GNU_AS ; 
 int /*<<< orphan*/  asm_out_file ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 
 TYPE_2__ targetm ; 

void
FUNC11 (rtx addr, rtx fnaddr, rtx static_chain)
{
  rtx addr_reg, eight = FUNC0 (8);

  /* The Intel assembler requires that the global __ia64_trampoline symbol
     be declared explicitly */
  if (!TARGET_GNU_AS)
    {
      static bool declared_ia64_trampoline = false;

      if (!declared_ia64_trampoline)
	{
	  declared_ia64_trampoline = true;
	  (*targetm.asm_out.globalize_label) (asm_out_file,
					      "__ia64_trampoline");
	}
    }

  /* Make sure addresses are Pmode even if we are in ILP32 mode. */
  addr = FUNC1 (Pmode, addr);
  fnaddr = FUNC1 (Pmode, fnaddr);
  static_chain = FUNC1 (Pmode, static_chain);

  /* Load up our iterator.  */
  addr_reg = FUNC6 (Pmode);
  FUNC4 (addr_reg, addr);

  /* The first two words are the fake descriptor:
     __ia64_trampoline, ADDR+16.  */
  FUNC4 (FUNC7 (Pmode, addr_reg),
		  FUNC8 (Pmode, "__ia64_trampoline"));
  FUNC3 (FUNC5 (addr_reg, addr_reg, eight));

  FUNC4 (FUNC7 (Pmode, addr_reg),
		  FUNC2 (FUNC9 (addr, 16)));
  FUNC3 (FUNC5 (addr_reg, addr_reg, eight));

  /* The third word is the target descriptor.  */
  FUNC4 (FUNC7 (Pmode, addr_reg), fnaddr);
  FUNC3 (FUNC5 (addr_reg, addr_reg, eight));

  /* The fourth word is the static chain.  */
  FUNC4 (FUNC7 (Pmode, addr_reg), static_chain);
}