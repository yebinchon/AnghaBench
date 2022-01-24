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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct symbol {int dummy; } ;
struct block {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct symbol*) ; 
 scalar_t__ FUNC1 (struct symbol*,struct value**,int) ; 
 struct type* builtin_type_void ; 
 struct type* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (char*,char const*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct type*) ; 
 int /*<<< orphan*/  FUNC5 (struct symbol**,struct block**,int,int) ; 

int
FUNC6 (struct symbol *syms[], struct block *blocks[],
		      int nsyms, struct value **args, int nargs,
		      const char *name, struct type *context_type)
{
  int k;
  int m;			/* Number of hits */
  struct type *fallback;
  struct type *return_type;

  return_type = context_type;
  if (context_type == NULL)
    fallback = builtin_type_void;
  else
    fallback = NULL;

  m = 0;
  while (1)
    {
      for (k = 0; k < nsyms; k += 1)
	{
	  struct type *type = FUNC2 (FUNC0 (syms[k]));

	  if (FUNC1 (syms[k], args, nargs)
	      && FUNC4 (FUNC0 (syms[k]), return_type))
	    {
	      syms[m] = syms[k];
	      if (blocks != NULL)
		blocks[m] = blocks[k];
	      m += 1;
	    }
	}
      if (m > 0 || return_type == fallback)
	break;
      else
	return_type = fallback;
    }

  if (m == 0)
    return -1;
  else if (m > 1)
    {
      FUNC3 ("Multiple matches for %s\n", name);
      FUNC5 (syms, blocks, m, 1);
      return 0;
    }
  return 0;
}