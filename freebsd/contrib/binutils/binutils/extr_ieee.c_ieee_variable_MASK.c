#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct ieee_handle {unsigned int name_indx; int /*<<< orphan*/  cxx; int /*<<< orphan*/  abfd; int /*<<< orphan*/  vars; TYPE_2__* type_stack; } ;
typedef  enum debug_var_kind { ____Placeholder_debug_var_kind } debug_var_kind ;
typedef  int bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_3__ {unsigned int size; scalar_t__ referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
#define  DEBUG_GLOBAL 132 
#define  DEBUG_LOCAL 131 
#define  DEBUG_LOCAL_STATIC 130 
#define  DEBUG_REGISTER 129 
#define  DEBUG_STATIC 128 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,scalar_t__,int,int /*<<< orphan*/ ) ; 
 scalar_t__ ieee_atn_record_enum ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ ieee_nn_record ; 
 unsigned int FUNC6 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_handle*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC11 (struct ieee_handle*,char const*) ; 
 int /*<<< orphan*/  FUNC12 (struct ieee_handle*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (void *p, const char *name, enum debug_var_kind kind,
	       bfd_vma val)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int name_indx;
  unsigned int size;
  bfd_boolean referencep;
  unsigned int type_indx;
  bfd_boolean asn;
  int refflag;

  size = info->type_stack->type.size;
  referencep = info->type_stack->type.referencep;
  type_indx = FUNC6 (info);

  FUNC1 (! FUNC3 (&info->vars));
  if (! FUNC4 (info, &info->vars))
    return FALSE;

  name_indx = info->name_indx;
  ++info->name_indx;

  /* Write out an NN and an ATN record for this variable.  */
  if (! FUNC10 (info, (int) ieee_nn_record)
      || ! FUNC12 (info, name_indx)
      || ! FUNC11 (info, name)
      || ! FUNC7 (info, (int) ieee_atn_record_enum)
      || ! FUNC12 (info, name_indx)
      || ! FUNC12 (info, type_indx))
    return FALSE;
  switch (kind)
    {
    default:
      FUNC0 ();
      return FALSE;
    case DEBUG_GLOBAL:
      if (! FUNC12 (info, 8)
	  || ! FUNC2 (info, FALSE, val, val + size))
	return FALSE;
      refflag = 0;
      asn = TRUE;
      break;
    case DEBUG_STATIC:
      if (! FUNC12 (info, 3)
	  || ! FUNC2 (info, FALSE, val, val + size))
	return FALSE;
      refflag = 1;
      asn = TRUE;
      break;
    case DEBUG_LOCAL_STATIC:
      if (! FUNC12 (info, 3)
	  || ! FUNC2 (info, FALSE, val, val + size))
	return FALSE;
      refflag = 2;
      asn = TRUE;
      break;
    case DEBUG_LOCAL:
      if (! FUNC12 (info, 1)
	  || ! FUNC12 (info, val))
	return FALSE;
      refflag = 2;
      asn = FALSE;
      break;
    case DEBUG_REGISTER:
      if (! FUNC12 (info, 2)
	  || ! FUNC12 (info,
				  FUNC5 (info->abfd, val)))
	return FALSE;
      refflag = 2;
      asn = FALSE;
      break;
    }

  if (asn)
    {
      if (! FUNC8 (info, name_indx, val))
	return FALSE;
    }

  /* If this is really a reference type, then we just output it with
     pointer type, and must now output a C++ record indicating that it
     is really reference type.  */
  if (referencep)
    {
      unsigned int nindx;

      nindx = info->name_indx;
      ++info->name_indx;

      /* If this is a global variable, we want to output the misc
         record in the C++ misc record block.  Otherwise, we want to
         output it just after the variable definition, which is where
         the current buffer is.  */
      if (refflag != 2)
	{
	  if (! FUNC4 (info, &info->cxx))
	    return FALSE;
	}

      if (! FUNC10 (info, (int) ieee_nn_record)
	  || ! FUNC12 (info, nindx)
	  || ! FUNC11 (info, "")
	  || ! FUNC7 (info, (int) ieee_atn_record_enum)
	  || ! FUNC12 (info, nindx)
	  || ! FUNC12 (info, 0)
	  || ! FUNC12 (info, 62)
	  || ! FUNC12 (info, 80)
	  || ! FUNC12 (info, 3)
	  || ! FUNC8 (info, nindx, 'R')
	  || ! FUNC8 (info, nindx, refflag)
	  || ! FUNC9 (info, nindx, name))
	return FALSE;
    }

  return TRUE;
}