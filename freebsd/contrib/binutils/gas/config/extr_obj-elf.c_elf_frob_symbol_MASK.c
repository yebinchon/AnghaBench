#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  symbolS ;
struct elf_obj_sy {int /*<<< orphan*/ * versioned_name; TYPE_4__* size; } ;
struct TYPE_7__ {int X_op; scalar_t__ X_add_number; int /*<<< orphan*/ * X_add_symbol; int /*<<< orphan*/ * X_op_symbol; } ;
struct TYPE_6__ {int flags; } ;
struct TYPE_5__ {scalar_t__ fr_address; } ;

/* Variables and functions */
 int BSF_FUNCTION ; 
 int BSF_OBJECT ; 
 scalar_t__ ECOFF_DEBUGGING ; 
 char ELF_VER_CHR ; 
#define  O_constant 129 
#define  O_subtract 128 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TARGET_OS ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC15 (char*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,size_t) ; 
 char* FUNC22 (int /*<<< orphan*/ *,char) ; 
 int FUNC23 (char*) ; 
 int /*<<< orphan*/ * FUNC24 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/ * FUNC25 (int /*<<< orphan*/ *) ; 
 TYPE_3__* FUNC26 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC27 (int /*<<< orphan*/ *) ; 
 struct elf_obj_sy* FUNC28 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC29 (int /*<<< orphan*/ *,TYPE_1__*) ; 

void
FUNC30 (symbolS *symp, int *puntp)
{
  struct elf_obj_sy *sy_obj;

#ifdef NEED_ECOFF_DEBUG
  if (ECOFF_DEBUGGING)
    ecoff_frob_symbol (symp);
#endif

  sy_obj = FUNC28 (symp);

  if (sy_obj->size != NULL)
    {
      switch (sy_obj->size->X_op)
	{
	case O_subtract:
	  FUNC12 (symp,
		      (FUNC3 (sy_obj->size->X_add_symbol)
		       + sy_obj->size->X_add_number
		       - FUNC3 (sy_obj->size->X_op_symbol)));
	  break;
	case O_constant:
	  FUNC12 (symp,
		      (FUNC3 (sy_obj->size->X_add_symbol)
		       + sy_obj->size->X_add_number));
	  break;
	default:
	  FUNC16 (FUNC15(".size expression too complicated to fix up"));
	  break;
	}
      FUNC19 (sy_obj->size);
      sy_obj->size = NULL;
    }

  if (sy_obj->versioned_name != NULL)
    {
      char *p;

      p = FUNC22 (sy_obj->versioned_name, ELF_VER_CHR);
      FUNC20 (p != NULL);

      /* This symbol was given a new name with the .symver directive.

	 If this is an external reference, just rename the symbol to
	 include the version string.  This will make the relocs be
	 against the correct versioned symbol.

	 If this is a definition, add an alias.  FIXME: Using an alias
	 will permit the debugging information to refer to the right
	 symbol.  However, it's not clear whether it is the best
	 approach.  */

      if (! FUNC5 (symp))
	{
	  /* Verify that the name isn't using the @@ syntax--this is
	     reserved for definitions of the default version to link
	     against.  */
	  if (p[1] == ELF_VER_CHR)
	    {
	      FUNC16 (FUNC15("invalid attempt to declare external version name as default in symbol `%s'"),
		      sy_obj->versioned_name);
	      *puntp = TRUE;
	    }
	  FUNC9 (symp, sy_obj->versioned_name);
	}
      else
	{
	  if (p[1] == ELF_VER_CHR && p[2] == ELF_VER_CHR)
	    {
	      size_t l;

	      /* The @@@ syntax is a special case. It renames the
		 symbol name to versioned_name with one `@' removed.  */
	      l = FUNC23 (&p[3]) + 1;
	      FUNC21 (&p[2], &p[3], l);
	      FUNC9 (symp, sy_obj->versioned_name);
	    }
	  else
	    {
	      symbolS *symp2;

	      /* FIXME: Creating a new symbol here is risky.  We're
		 in the final loop over the symbol table.  We can
		 get away with it only because the symbol goes to
		 the end of the list, where the loop will still see
		 it.  It would probably be better to do this in
		 obj_frob_file_before_adjust.  */

	      symp2 = FUNC25 (sy_obj->versioned_name);

	      /* Now we act as though we saw symp2 = sym.  */

	      FUNC11 (symp2, FUNC2 (symp));

	      /* Subtracting out the frag address here is a hack
		 because we are in the middle of the final loop.  */
	      FUNC13 (symp2,
			   (FUNC3 (symp)
			    - FUNC27 (symp)->fr_address));

	      FUNC29 (symp2, FUNC27 (symp));

	      /* This will copy over the size information.  */
	      FUNC17 (symp2, symp);

	      FUNC10 (symp2, FUNC1 (symp));

	      if (FUNC7 (symp))
		FUNC14 (symp2);

	      if (FUNC6 (symp))
		FUNC8 (symp2);
	    }
	}
    }

  /* Double check weak symbols.  */
  if (FUNC7 (symp))
    {
      if (FUNC4 (symp))
	FUNC16 (FUNC15("symbol `%s' can not be both weak and common"),
		FUNC0 (symp));
    }

#ifdef TC_MIPS
  /* The Irix 5 and 6 assemblers set the type of any common symbol and
     any undefined non-function symbol to STT_OBJECT.  We try to be
     compatible, since newer Irix 5 and 6 linkers care.  However, we
     only set undefined symbols to be STT_OBJECT if we are on Irix,
     because that is the only time gcc will generate the necessary
     .global directives to mark functions.  */

  if (S_IS_COMMON (symp))
    symbol_get_bfdsym (symp)->flags |= BSF_OBJECT;

  if (strstr (TARGET_OS, "irix") != NULL
      && ! S_IS_DEFINED (symp)
      && (symbol_get_bfdsym (symp)->flags & BSF_FUNCTION) == 0)
    symbol_get_bfdsym (symp)->flags |= BSF_OBJECT;
#endif
}