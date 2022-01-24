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
struct symbol {int dummy; } ;
typedef  struct symbol block ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (struct symbol**,size_t,int) ; 
 int /*<<< orphan*/ * FUNC2 (struct symbol*) ; 
 struct symbol** defn_blocks ; 
 struct symbol** defn_symbols ; 
 size_t defn_vector_size ; 
 scalar_t__ FUNC3 (struct symbol*,struct symbol*) ; 
 int ndefns ; 

__attribute__((used)) static void
FUNC4 (struct symbol *sym, struct block *block)
{
  int i;
  size_t tmp;

  if (FUNC2 (sym) != NULL)
    FUNC0 (FUNC2 (sym));
  for (i = 0; i < ndefns; i += 1)
    {
      if (FUNC3 (sym, defn_symbols[i]))
	return;
      else if (FUNC3 (defn_symbols[i], sym))
	{
	  defn_symbols[i] = sym;
	  defn_blocks[i] = block;
	  return;
	}
    }

  tmp = defn_vector_size;
  FUNC1 (defn_symbols, tmp, ndefns + 2);
  FUNC1 (defn_blocks, defn_vector_size, ndefns + 2);

  defn_symbols[ndefns] = sym;
  defn_blocks[ndefns] = block;
  ndefns += 1;
}