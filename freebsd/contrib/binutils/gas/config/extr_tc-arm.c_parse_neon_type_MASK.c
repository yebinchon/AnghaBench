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
struct neon_type {scalar_t__ elems; TYPE_1__* el; } ;
typedef  enum neon_el_type { ____Placeholder_neon_el_type } neon_el_type ;
struct TYPE_2__ {int type; unsigned int size; } ;

/* Variables and functions */
 int FAIL ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ NEON_MAX_TYPE_ELS ; 
 int NT_float ; 
 int NT_integer ; 
 int NT_poly ; 
 int NT_signed ; 
 int NT_unsigned ; 
 int NT_untyped ; 
 int SUCCESS ; 
 int FUNC1 (char) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,unsigned int) ; 
 unsigned int FUNC4 (char*,char**,int) ; 

__attribute__((used)) static int
FUNC5 (struct neon_type *type, char **str)
{
  char *ptr = *str;

  if (type)
    type->elems = 0;

  while (type->elems < NEON_MAX_TYPE_ELS)
    {
      enum neon_el_type thistype = NT_untyped;
      unsigned thissize = -1u;

      if (*ptr != '.')
	break;

      ptr++;

      /* Just a size without an explicit type.  */
      if (FUNC0 (*ptr))
	goto parsesize;

      switch (FUNC1 (*ptr))
	{
	case 'i': thistype = NT_integer; break;
	case 'f': thistype = NT_float; break;
	case 'p': thistype = NT_poly; break;
	case 's': thistype = NT_signed; break;
	case 'u': thistype = NT_unsigned; break;
        case 'd':
          thistype = NT_float;
          thissize = 64;
          ptr++;
          goto done;
	default:
	  FUNC3 (FUNC2("unexpected character `%c' in type specifier"), *ptr);
	  return FAIL;
	}

      ptr++;

      /* .f is an abbreviation for .f32.  */
      if (thistype == NT_float && !FUNC0 (*ptr))
	thissize = 32;
      else
	{
	parsesize:
	  thissize = FUNC4 (ptr, &ptr, 10);

	  if (thissize != 8 && thissize != 16 && thissize != 32
              && thissize != 64)
            {
              FUNC3 (FUNC2("bad size %d in type specifier"), thissize);
	      return FAIL;
	    }
	}

      done:
      if (type)
        {
          type->el[type->elems].type = thistype;
	  type->el[type->elems].size = thissize;
	  type->elems++;
	}
    }

  /* Empty/missing type is not a successful parse.  */
  if (type->elems == 0)
    return FAIL;

  *str = ptr;

  return SUCCESS;
}