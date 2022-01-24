#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct partial_symtab {int n_global_syms; int n_static_syms; int globals_offset; int statics_offset; TYPE_3__* objfile; } ;
struct partial_symbol {int dummy; } ;
typedef  scalar_t__ domain_enum ;
struct TYPE_5__ {struct partial_symbol** list; } ;
struct TYPE_4__ {struct partial_symbol** list; } ;
struct TYPE_6__ {TYPE_2__ static_psymbols; TYPE_1__ global_psymbols; } ;

/* Variables and functions */
 char* FUNC0 (struct partial_symbol*) ; 
 scalar_t__ FUNC1 (struct partial_symbol*) ; 
 scalar_t__ FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*,char const*) ; 
 int FUNC4 (char const*) ; 
 int FUNC5 (char const*,char*,int) ; 
 scalar_t__ FUNC6 (char const*,int,char*) ; 

__attribute__((used)) static struct partial_symbol *
FUNC7 (struct partial_symtab *pst, const char *name,
			   int global, domain_enum domain, int wild)
{
  struct partial_symbol **start;
  int name_len = FUNC4 (name);
  int length = (global ? pst->n_global_syms : pst->n_static_syms);
  int i;

  if (length == 0)
    {
      return (NULL);
    }

  start = (global ?
	   pst->objfile->global_psymbols.list + pst->globals_offset :
	   pst->objfile->static_psymbols.list + pst->statics_offset);

  if (wild)
    {
      for (i = 0; i < length; i += 1)
	{
	  struct partial_symbol *psym = start[i];

	  if (FUNC1 (psym) == domain &&
	      FUNC6 (name, name_len, FUNC0 (psym)))
	    return psym;
	}
      return NULL;
    }
  else
    {
      if (global)
	{
	  int U;
	  i = 0;
	  U = length - 1;
	  while (U - i > 4)
	    {
	      int M = (U + i) >> 1;
	      struct partial_symbol *psym = start[M];
	      if (FUNC0 (psym)[0] < name[0])
		i = M + 1;
	      else if (FUNC0 (psym)[0] > name[0])
		U = M - 1;
	      else if (FUNC3 (FUNC0 (psym), name) < 0)
		i = M + 1;
	      else
		U = M;
	    }
	}
      else
	i = 0;

      while (i < length)
	{
	  struct partial_symbol *psym = start[i];

	  if (FUNC1 (psym) == domain)
	    {
	      int cmp = FUNC5 (name, FUNC0 (psym), name_len);

	      if (cmp < 0)
		{
		  if (global)
		    break;
		}
	      else if (cmp == 0
		       && FUNC2 (FUNC0 (psym) + name_len))
		return psym;
	    }
	  i += 1;
	}

      if (global)
	{
	  int U;
	  i = 0;
	  U = length - 1;
	  while (U - i > 4)
	    {
	      int M = (U + i) >> 1;
	      struct partial_symbol *psym = start[M];
	      if (FUNC0 (psym)[0] < '_')
		i = M + 1;
	      else if (FUNC0 (psym)[0] > '_')
		U = M - 1;
	      else if (FUNC3 (FUNC0 (psym), "_ada_") < 0)
		i = M + 1;
	      else
		U = M;
	    }
	}
      else
	i = 0;

      while (i < length)
	{
	  struct partial_symbol *psym = start[i];

	  if (FUNC1 (psym) == domain)
	    {
	      int cmp;

	      cmp = (int) '_' - (int) FUNC0 (psym)[0];
	      if (cmp == 0)
		{
		  cmp = FUNC5 ("_ada_", FUNC0 (psym), 5);
		  if (cmp == 0)
		    cmp = FUNC5 (name, FUNC0 (psym) + 5, name_len);
		}

	      if (cmp < 0)
		{
		  if (global)
		    break;
		}
	      else if (cmp == 0
		       && FUNC2 (FUNC0 (psym) + name_len + 5))
		return psym;
	    }
	  i += 1;
	}

    }
  return NULL;
}