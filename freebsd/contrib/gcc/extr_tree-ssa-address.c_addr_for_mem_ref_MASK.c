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
struct mem_address {scalar_t__ index; scalar_t__ base; scalar_t__ symbol; scalar_t__ offset; scalar_t__ step; } ;
struct mem_addr_template {void* ref; void** off_p; void** step_p; } ;
typedef  void* rtx ;

/* Variables and functions */
 int /*<<< orphan*/  EXPAND_NORMAL ; 
 scalar_t__ LAST_VIRTUAL_REGISTER ; 
 void* NULL_RTX ; 
 int /*<<< orphan*/  Pmode ; 
 int FUNC0 (scalar_t__,scalar_t__,scalar_t__,void*,void*) ; 
 int /*<<< orphan*/  FUNC1 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__,int /*<<< orphan*/ ) ; 
 void* const0_rtx ; 
 int /*<<< orphan*/  current_function_decl ; 
 void* FUNC4 (scalar_t__,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,void*,void*,void*,void*,void**,void***,void***) ; 
 void* FUNC6 (int /*<<< orphan*/ ,scalar_t__) ; 
 void* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 
 void* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (scalar_t__) ; 
 struct mem_addr_template* templates ; 

rtx
FUNC12 (struct mem_address *addr, bool really_expand)
{
  rtx address, sym, bse, idx, st, off;
  static bool templates_initialized = false;
  struct mem_addr_template *templ;

  if (addr->step && !FUNC10 (addr->step))
    st = FUNC9 (FUNC2 (addr->step),
			     FUNC1 (addr->step), Pmode);
  else
    st = NULL_RTX;

  if (addr->offset && !FUNC11 (addr->offset))
    off = FUNC9 (FUNC2 (addr->offset),
			      FUNC1 (addr->offset), Pmode);
  else
    off = NULL_RTX;

  if (!really_expand)
    {
      /* Reuse the templates for addresses, so that we do not waste memory.  */
      if (!templates_initialized)
	{
	  unsigned i;

	  templates_initialized = true;
	  sym = FUNC7 (Pmode, FUNC8 ("test_symbol"));
	  bse = FUNC6 (Pmode, LAST_VIRTUAL_REGISTER + 1);
	  idx = FUNC6 (Pmode, LAST_VIRTUAL_REGISTER + 2);

	  for (i = 0; i < 32; i++)
	    FUNC5 ((i & 16 ? sym : NULL_RTX),
			  (i & 8 ? bse : NULL_RTX),
			  (i & 4 ? idx : NULL_RTX),
			  (i & 2 ? const0_rtx : NULL_RTX),
			  (i & 1 ? const0_rtx : NULL_RTX),
			  &templates[i].ref,
			  &templates[i].step_p,
			  &templates[i].off_p);
	}

      templ = templates + FUNC0 (addr->symbol, addr->base, addr->index,
				     st, off);
      if (st)
	*templ->step_p = st;
      if (off)
	*templ->off_p = off;

      return templ->ref;
    }

  /* Otherwise really expand the expressions.  */
  sym = (addr->symbol
	 ? FUNC4 (FUNC3 (addr->symbol, current_function_decl),
			NULL_RTX, Pmode, EXPAND_NORMAL)
	 : NULL_RTX);
  bse = (addr->base
	 ? FUNC4 (addr->base, NULL_RTX, Pmode, EXPAND_NORMAL)
	 : NULL_RTX);
  idx = (addr->index
	 ? FUNC4 (addr->index, NULL_RTX, Pmode, EXPAND_NORMAL)
	 : NULL_RTX);

  FUNC5 (sym, bse, idx, st, off, &address, NULL, NULL);
  return address;
}