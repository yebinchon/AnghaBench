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
struct ieee_var {char* name; unsigned long namlen; scalar_t__* pslot; void* kind; scalar_t__ type; } ;
struct TYPE_5__ {TYPE_1__* bsp; TYPE_1__* stack; } ;
struct TYPE_6__ {int alloc; struct ieee_var* vars; } ;
struct ieee_info {TYPE_2__ blockstack; int /*<<< orphan*/  abfd; void* dhandle; TYPE_3__ vars; } ;
typedef  int ieee_record_enum_type ;
typedef  scalar_t__ debug_type ;
typedef  int bfd_vma ;
typedef  int /*<<< orphan*/  bfd_byte ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_4__ {int kind; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_GLOBAL ; 
 scalar_t__ DEBUG_KIND_POINTER ; 
 int /*<<< orphan*/  DEBUG_LOCAL ; 
 int /*<<< orphan*/  DEBUG_LOCAL_STATIC ; 
 int /*<<< orphan*/  DEBUG_REGISTER ; 
 int /*<<< orphan*/  DEBUG_STATIC ; 
 scalar_t__ DEBUG_TYPE_NULL ; 
 int /*<<< orphan*/  FALSE ; 
 void* IEEE_EXTERNAL ; 
 void* IEEE_GLOBAL ; 
 void* IEEE_LOCAL ; 
 void* IEEE_STATIC ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 scalar_t__ FUNC1 (void*,scalar_t__) ; 
 scalar_t__ FUNC2 (void*,scalar_t__*,char const*) ; 
 scalar_t__ FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (void*,int,int) ; 
 int /*<<< orphan*/  FUNC5 (void*,char*,scalar_t__,int /*<<< orphan*/ ,int) ; 
#define  ieee_at_record_enum 129 
#define  ieee_e2_first_byte_enum 128 
 int /*<<< orphan*/  FUNC6 (struct ieee_info*,int /*<<< orphan*/  const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_info*,int /*<<< orphan*/  const**,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_info*,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_info*,int /*<<< orphan*/  const**,char const**,unsigned long*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee_info*,int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee_info*,int /*<<< orphan*/  const**,scalar_t__*) ; 
 int FUNC12 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC13 (struct ieee_info*,int /*<<< orphan*/  const**,int*) ; 
 int /*<<< orphan*/  FUNC14 (struct ieee_info*,int /*<<< orphan*/  const**,char const**,unsigned long*) ; 
 int /*<<< orphan*/  FUNC15 (struct ieee_var*,int /*<<< orphan*/ ,unsigned int) ; 
 char* FUNC16 (char const*,unsigned long) ; 
 scalar_t__ FUNC17 (int) ; 
 scalar_t__ FUNC18 (struct ieee_var*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC19 (struct ieee_info *info, const bfd_byte **pp)
{
  const bfd_byte *atn_start, *atn_code_start;
  bfd_vma varindx;
  struct ieee_var *pvar;
  debug_type type;
  bfd_vma atn_code;
  void *dhandle;
  bfd_vma v, v2, v3, v4, v5;
  const char *name;
  unsigned long namlen;
  char *namcopy;
  bfd_boolean present;
  int blocktype;

  atn_start = *pp;

  if (! FUNC8 (info, pp, &varindx)
      || ! FUNC11 (info, pp, &type))
    return FALSE;

  atn_code_start = *pp;

  if (! FUNC8 (info, pp, &atn_code))
    return FALSE;

  if (varindx == 0)
    {
      pvar = NULL;
      name = "";
      namlen = 0;
    }
  else if (varindx < 32)
    {
      /* The MRI compiler reportedly sometimes emits variable lifetime
         information for a register.  We just ignore it.  */
      if (atn_code == 9)
	return FUNC8 (info, pp, &v);

      FUNC6 (info, atn_start, FUNC0("illegal variable index"));
      return FALSE;
    }
  else
    {
      varindx -= 32;
      if (varindx >= info->vars.alloc
	  || info->vars.vars[varindx].name == NULL)
	{
	  /* The MRI compiler or linker sometimes omits the NN record
             for a pmisc record.  */
	  if (atn_code == 62)
	    {
	      if (varindx >= info->vars.alloc)
		{
		  unsigned int alloc;

		  alloc = info->vars.alloc;
		  if (alloc == 0)
		    alloc = 4;
		  while (varindx >= alloc)
		    alloc *= 2;
		  info->vars.vars = ((struct ieee_var *)
				     FUNC18 (info->vars.vars,
					       (alloc
						* sizeof *info->vars.vars)));
		  FUNC15 (info->vars.vars + info->vars.alloc, 0,
			  ((alloc - info->vars.alloc)
			   * sizeof *info->vars.vars));
		  info->vars.alloc = alloc;
		}

	      pvar = info->vars.vars + varindx;
	      pvar->name = "";
	      pvar->namlen = 0;
	    }
	  else
	    {
	      FUNC6 (info, atn_start, FUNC0("undefined variable in ATN"));
	      return FALSE;
	    }
	}

      pvar = info->vars.vars + varindx;

      pvar->type = type;

      name = pvar->name;
      namlen = pvar->namlen;
    }

  dhandle = info->dhandle;

  /* If we are going to call debug_record_variable with a pointer
     type, change the type to an indirect type so that we can later
     change it to a reference type if we encounter a C++ pmisc 'R'
     record.  */
  if (pvar != NULL
      && type != DEBUG_TYPE_NULL
      && FUNC1 (dhandle, type) == DEBUG_KIND_POINTER)
    {
      switch (atn_code)
	{
	case 1:
	case 2:
	case 3:
	case 5:
	case 8:
	case 10:
	  pvar->pslot = (debug_type *) FUNC17 (sizeof *pvar->pslot);
	  *pvar->pslot = type;
	  type = FUNC2 (dhandle, pvar->pslot,
					   (const char *) NULL);
	  pvar->type = type;
	  break;
	}
    }

  switch (atn_code)
    {
    default:
      FUNC6 (info, atn_code_start, FUNC0("unknown ATN type"));
      return FALSE;

    case 1:
      /* Automatic variable.  */
      if (! FUNC8 (info, pp, &v))
	return FALSE;
      namcopy = FUNC16 (name, namlen);
      if (type == NULL)
	type = FUNC3 (dhandle);
      if (pvar != NULL)
	pvar->kind = IEEE_LOCAL;
      return FUNC5 (dhandle, namcopy, type, DEBUG_LOCAL, v);

    case 2:
      /* Register variable.  */
      if (! FUNC8 (info, pp, &v))
	return FALSE;
      namcopy = FUNC16 (name, namlen);
      if (type == NULL)
	type = FUNC3 (dhandle);
      if (pvar != NULL)
	pvar->kind = IEEE_LOCAL;
      return FUNC5 (dhandle, namcopy, type, DEBUG_REGISTER,
				    FUNC12 (info->abfd, v));

    case 3:
      /* Static variable.  */
      if (! FUNC13 (info, pp, &v))
	return FALSE;
      namcopy = FUNC16 (name, namlen);
      if (type == NULL)
	type = FUNC3 (dhandle);
      if (info->blockstack.bsp <= info->blockstack.stack)
	blocktype = 0;
      else
	blocktype = info->blockstack.bsp[-1].kind;
      if (pvar != NULL)
	{
	  if (blocktype == 4 || blocktype == 6)
	    pvar->kind = IEEE_LOCAL;
	  else
	    pvar->kind = IEEE_STATIC;
	}
      return FUNC5 (dhandle, namcopy, type,
				    (blocktype == 4 || blocktype == 6
				     ? DEBUG_LOCAL_STATIC
				     : DEBUG_STATIC),
				    v);

    case 4:
      /* External function.  We don't currently record these.  FIXME.  */
      if (pvar != NULL)
	pvar->kind = IEEE_EXTERNAL;
      return TRUE;

    case 5:
      /* External variable.  We don't currently record these.  FIXME.  */
      if (pvar != NULL)
	pvar->kind = IEEE_EXTERNAL;
      return TRUE;

    case 7:
      if (! FUNC8 (info, pp, &v)
	  || ! FUNC8 (info, pp, &v2)
	  || ! FUNC10 (info, pp, &v3, &present))
	return FALSE;
      if (present)
	{
	  if (! FUNC10 (info, pp, &v4, &present))
	    return FALSE;
	}

      /* We just ignore the two optional fields in v3 and v4, since
         they are not defined.  */

      if (! FUNC13 (info, pp, &v3))
	return FALSE;

      /* We have no way to record the column number.  FIXME.  */

      return FUNC4 (dhandle, v, v3);

    case 8:
      /* Global variable.  */
      if (! FUNC13 (info, pp, &v))
	return FALSE;
      namcopy = FUNC16 (name, namlen);
      if (type == NULL)
	type = FUNC3 (dhandle);
      if (pvar != NULL)
	pvar->kind = IEEE_GLOBAL;
      return FUNC5 (dhandle, namcopy, type, DEBUG_GLOBAL, v);

    case 9:
      /* Variable lifetime information.  */
      if (! FUNC8 (info, pp, &v))
	return FALSE;

      /* We have no way to record this information.  FIXME.  */
      return TRUE;

    case 10:
      /* Locked register.  The spec says that there are two required
         fields, but at least on occasion the MRI compiler only emits
         one.  */
      if (! FUNC8 (info, pp, &v)
	  || ! FUNC10 (info, pp, &v2, &present))
	return FALSE;

      /* I think this means a variable that is both in a register and
         a frame slot.  We ignore the frame slot.  FIXME.  */

      namcopy = FUNC16 (name, namlen);
      if (type == NULL)
	type = FUNC3 (dhandle);
      if (pvar != NULL)
	pvar->kind = IEEE_LOCAL;
      return FUNC5 (dhandle, namcopy, type, DEBUG_REGISTER, v);

    case 11:
      /* Reserved for FORTRAN common.  */
      FUNC6 (info, atn_code_start, FUNC0("unsupported ATN11"));

      /* Return TRUE to keep going.  */
      return TRUE;

    case 12:
      /* Based variable.  */
      v3 = 0;
      v4 = 0x80;
      v5 = 0;
      if (! FUNC8 (info, pp, &v)
	  || ! FUNC8 (info, pp, &v2)
	  || ! FUNC10 (info, pp, &v3, &present))
	return FALSE;
      if (present)
	{
	  if (! FUNC10 (info, pp, &v4, &present))
	    return FALSE;
	  if (present)
	    {
	      if (! FUNC10 (info, pp, &v5, &present))
		return FALSE;
	    }
	}

      /* We have no way to record this information.  FIXME.  */

      FUNC6 (info, atn_code_start, FUNC0("unsupported ATN12"));

      /* Return TRUE to keep going.  */
      return TRUE;

    case 16:
      /* Constant.  The description of this that I have is ambiguous,
         so I'm not going to try to implement it.  */
      if (! FUNC8 (info, pp, &v)
	  || ! FUNC10 (info, pp, &v2, &present))
	return FALSE;
      if (present)
	{
	  if (! FUNC10 (info, pp, &v2, &present))
	    return FALSE;
	  if (present)
	    {
	      if (! FUNC9 (info, pp, &name, &namlen, &present))
		return FALSE;
	    }
	}

      if ((ieee_record_enum_type) **pp == ieee_e2_first_byte_enum)
	{
	  if (! FUNC13 (info, pp, &v3))
	    return FALSE;
	}

      return TRUE;

    case 19:
      /* Static variable from assembler.  */
      v2 = 0;
      if (! FUNC8 (info, pp, &v)
	  || ! FUNC10 (info, pp, &v2, &present)
	  || ! FUNC13 (info, pp, &v3))
	return FALSE;
      namcopy = FUNC16 (name, namlen);
      /* We don't really handle this correctly.  FIXME.  */
      return FUNC5 (dhandle, namcopy,
				    FUNC3 (dhandle),
				    v2 != 0 ? DEBUG_GLOBAL : DEBUG_STATIC,
				    v3);

    case 62:
      /* Procedure miscellaneous information.  */
    case 63:
      /* Variable miscellaneous information.  */
    case 64:
      /* Module miscellaneous information.  */
      if (! FUNC8 (info, pp, &v)
	  || ! FUNC8 (info, pp, &v2)
	  || ! FUNC9 (info, pp, &name, &namlen, &present))
	return FALSE;

      if (atn_code == 62 && v == 80)
	{
	  if (present)
	    {
	      FUNC6 (info, atn_code_start,
			  FUNC0("unexpected string in C++ misc"));
	      return FALSE;
	    }
	  return FUNC7 (info, pp, v2);
	}

      /* We just ignore all of this stuff.  FIXME.  */

      for (; v2 > 0; --v2)
	{
	  switch ((ieee_record_enum_type) **pp)
	    {
	    default:
	      FUNC6 (info, *pp, FUNC0("bad misc record"));
	      return FALSE;

	    case ieee_at_record_enum:
	      if (! FUNC14 (info, pp, &name, &namlen))
		return FALSE;
	      break;

	    case ieee_e2_first_byte_enum:
	      if (! FUNC13 (info, pp, &v3))
		return FALSE;
	      break;
	    }
	}

      return TRUE;
    }

  /*NOTREACHED*/
}