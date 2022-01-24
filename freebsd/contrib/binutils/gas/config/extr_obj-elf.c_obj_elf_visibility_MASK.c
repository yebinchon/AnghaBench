#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct TYPE_5__ {int st_other; } ;
struct TYPE_6__ {TYPE_1__ internal_elf_sym; } ;
typedef  TYPE_2__ elf_symbol_type ;
typedef  int /*<<< orphan*/  asymbol ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 () ; 
 TYPE_2__* FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC5 () ; 
 char* input_line_pointer ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void
FUNC8 (int visibility)
{
  char *name;
  int c;
  symbolS *symbolP;
  asymbol *bfdsym;
  elf_symbol_type *elfsym;

  do
    {
      name = input_line_pointer;
      c = FUNC5 ();
      symbolP = FUNC6 (name);
      *input_line_pointer = c;

      FUNC0 ();

      bfdsym = FUNC7 (symbolP);
      elfsym = FUNC4 (FUNC2 (bfdsym), bfdsym);

      FUNC1 (elfsym);

      elfsym->internal_elf_sym.st_other &= ~3;
      elfsym->internal_elf_sym.st_other |= visibility;

      if (c == ',')
	{
	  input_line_pointer ++;

	  FUNC0 ();

	  if (*input_line_pointer == '\n')
	    c = '\n';
	}
    }
  while (c == ',');

  FUNC3 ();
}