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
typedef  scalar_t__ tree ;
typedef  int /*<<< orphan*/  rtx ;
struct TYPE_2__ {char* ptr_name; scalar_t__ stub_p; int /*<<< orphan*/  symbol; int /*<<< orphan*/  used; } ;
typedef  TYPE_1__ machopic_indirection ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 char* FUNC2 (scalar_t__) ; 
 scalar_t__ FUNC3 (scalar_t__) ; 
 int MACHO_SYMBOL_STATIC ; 
 int /*<<< orphan*/  Pmode ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC6 (scalar_t__) ; 
 char* FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC8 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (char const*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  const0_rtx ; 
 int /*<<< orphan*/ * darwin_sections ; 
 int /*<<< orphan*/  data_section ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char const*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 size_t machopic_nl_symbol_ptr_section ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,char*,char*) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*,char*,char const*) ; 
 int /*<<< orphan*/  FUNC20 (char*,char const*) ; 
 scalar_t__ FUNC21 (char const*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ) ; 
 char* user_label_prefix ; 

__attribute__((used)) static int
FUNC23 (void **slot, void *data)
{
  machopic_indirection *p = *((machopic_indirection **) slot);
  FILE *asm_out_file = (FILE *) data;
  rtx symbol;
  const char *sym_name;
  const char *ptr_name;

  if (!p->used)
    return 1;

  symbol = p->symbol;
  sym_name = FUNC7 (symbol, 0);
  ptr_name = p->ptr_name;

  if (p->stub_p)
    {
      char *sym;
      char *stub;
      tree id;

      id = FUNC18 (sym_name);
      if (id)
	{
	  tree id_orig = id;

	  while (FUNC3 (id))
	    id = FUNC6 (id);
	  if (id != id_orig)
	    sym_name = FUNC2 (id);
	}

      sym = FUNC8 (FUNC21 (sym_name) + 2);
      if (sym_name[0] == '*' || sym_name[0] == '&')
	FUNC20 (sym, sym_name + 1);
      else if (sym_name[0] == '-' || sym_name[0] == '+')
	FUNC20 (sym, sym_name);
      else
	FUNC19 (sym, "%s%s", user_label_prefix, sym_name);

      stub = FUNC8 (FUNC21 (ptr_name) + 2);
      if (ptr_name[0] == '*' || ptr_name[0] == '&')
	FUNC20 (stub, ptr_name + 1);
      else
	FUNC19 (stub, "%s%s", user_label_prefix, ptr_name);

      FUNC16 (asm_out_file, sym, stub);
    }
  else if (! FUNC15 (symbol)
	   && (FUNC17 (symbol)
	       || FUNC5 (symbol)))
    {
      FUNC22 (data_section);
      FUNC9 (FUNC0 (Pmode));
      FUNC11 (ptr_name);
      FUNC10 (FUNC14 (Pmode, sym_name),
			FUNC1 (Pmode),
			FUNC0 (Pmode), 1);
    }
  else
    {
      rtx init = const0_rtx;

      FUNC22 (darwin_sections[machopic_nl_symbol_ptr_section]);
      FUNC12 (asm_out_file, ptr_name);
      FUNC13 (asm_out_file, ":\n");

      FUNC13 (asm_out_file, "\t.indirect_symbol ");
      FUNC12 (asm_out_file, sym_name);
      FUNC13 (asm_out_file, "\n");

      /* Variables that are marked with MACHO_SYMBOL_STATIC need to
	 have their symbol name instead of 0 in the second entry of
	 the non-lazy symbol pointer data structure when they are
	 defined.  This allows the runtime to rebind newer instances
	 of the translation unit with the original instance of the
	 symbol.  */

      if ((FUNC4 (symbol) & MACHO_SYMBOL_STATIC)
	  && FUNC17 (symbol))
	init = FUNC14 (Pmode, sym_name);

      FUNC10 (init, FUNC1 (Pmode),
			FUNC0 (Pmode), 1);
    }

  return 1;
}