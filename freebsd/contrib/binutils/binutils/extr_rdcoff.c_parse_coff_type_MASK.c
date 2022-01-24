#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {scalar_t__ l; } ;
struct TYPE_5__ {unsigned short* x_dimen; } ;
struct TYPE_6__ {TYPE_1__ x_ary; } ;
struct TYPE_8__ {TYPE_3__ x_tagndx; TYPE_2__ x_fcnary; } ;
union internal_auxent {TYPE_4__ x_sym; } ;
struct coff_types {int dummy; } ;
struct coff_symbols {int dummy; } ;
typedef  scalar_t__ debug_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
typedef  int /*<<< orphan*/  bfd ;

/* Variables and functions */
 scalar_t__ DEBUG_TYPE_NULL ; 
 int FUNC0 (int) ; 
 int DIMNUM ; 
 int /*<<< orphan*/  FALSE ; 
 scalar_t__ FUNC1 (int) ; 
 scalar_t__ FUNC2 (int) ; 
 scalar_t__ FUNC3 (int) ; 
 int N_BTMASK ; 
 int T_INT ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__* FUNC5 (struct coff_types*,scalar_t__) ; 
 scalar_t__ FUNC6 (void*,scalar_t__,scalar_t__,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (void*,scalar_t__,scalar_t__*,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (void*,scalar_t__*,char const*) ; 
 scalar_t__ FUNC9 (void*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,struct coff_symbols*,struct coff_types*,long,int,union internal_auxent*,void*) ; 

__attribute__((used)) static debug_type
FUNC12 (bfd *abfd, struct coff_symbols *symbols,
		 struct coff_types *types, long coff_symno, int ntype,
		 union internal_auxent *pauxent, bfd_boolean useaux,
		 void *dhandle)
{
  debug_type type;

  if ((ntype & ~N_BTMASK) != 0)
    {
      int newtype;

      newtype = FUNC0 (ntype);

      if (FUNC3 (ntype))
	{
	  type = FUNC12 (abfd, symbols, types, coff_symno, newtype,
				  pauxent, useaux, dhandle);
	  type = FUNC9 (dhandle, type);
	}
      else if (FUNC2 (ntype))
	{
	  type = FUNC12 (abfd, symbols, types, coff_symno, newtype,
				  pauxent, useaux, dhandle);
	  type = FUNC7 (dhandle, type, (debug_type *) NULL,
					   FALSE);
	}
      else if (FUNC1 (ntype))
	{
	  int n;

	  if (pauxent == NULL)
	    n = 0;
	  else
	    {
	      unsigned short *dim;
	      int i;

	      /* FIXME: If pauxent->x_sym.x_tagndx.l == 0, gdb sets
                 the c_naux field of the syment to 0.  */

	      /* Move the dimensions down, so that the next array
                 picks up the next one.  */
	      dim = pauxent->x_sym.x_fcnary.x_ary.x_dimen;
	      n = dim[0];
	      for (i = 0; *dim != 0 && i < DIMNUM - 1; i++, dim++)
		*dim = *(dim + 1);
	      *dim = 0;
	    }

	  type = FUNC12 (abfd, symbols, types, coff_symno, newtype,
				  pauxent, FALSE, dhandle);
	  type = FUNC6 (dhandle, type,
					FUNC11 (abfd, symbols,
							      types,
							      coff_symno,
							      T_INT,
							      NULL, dhandle),
					0, n - 1, FALSE);
	}
      else
	{
	  FUNC10 (FUNC4("parse_coff_type: Bad type code 0x%x"), ntype);
	  return DEBUG_TYPE_NULL;
	}

      return type;
    }

  if (pauxent != NULL && pauxent->x_sym.x_tagndx.l > 0)
    {
      debug_type *slot;

      /* This is a reference to an existing type.  FIXME: gdb checks
	 that the class is not C_STRTAG, nor C_UNTAG, nor C_ENTAG.  */
      slot = FUNC5 (types, pauxent->x_sym.x_tagndx.l);
      if (*slot != DEBUG_TYPE_NULL)
	return *slot;
      else
	return FUNC8 (dhandle, slot, (const char *) NULL);
    }

  /* If the aux entry has already been used for something, useaux will
     have been set to false, indicating that parse_coff_base_type
     should not use it.  We need to do it this way, rather than simply
     passing pauxent as NULL, because we need to be able handle
     multiple array dimensions while still discarding pauxent after
     having handled all of them.  */
  if (! useaux)
    pauxent = NULL;

  return FUNC11 (abfd, symbols, types, coff_symno, ntype,
			       pauxent, dhandle);
}