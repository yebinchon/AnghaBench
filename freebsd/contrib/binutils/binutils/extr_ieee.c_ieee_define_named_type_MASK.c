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
struct ieee_buflist {int dummy; } ;
struct ieee_handle {unsigned int type_indx; unsigned int name_indx; char const* modname; struct ieee_buflist global_types; struct ieee_buflist types; } ;
typedef  int bfd_boolean ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ ieee_bb_record_enum ; 
 int /*<<< orphan*/  FUNC0 (struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,struct ieee_buflist*) ; 
 scalar_t__ ieee_nn_record ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,unsigned int,unsigned int,int,int) ; 
 scalar_t__ ieee_ty_record_enum ; 
 scalar_t__ FUNC3 (struct ieee_handle*,int) ; 
 scalar_t__ FUNC4 (struct ieee_handle*,char const*) ; 
 scalar_t__ FUNC5 (struct ieee_handle*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC6 (struct ieee_handle *info, const char *name,
			unsigned int indx, unsigned int size,
			bfd_boolean unsignedp, bfd_boolean localp,
			struct ieee_buflist *buflist)
{
  unsigned int type_indx;
  unsigned int name_indx;

  if (indx != (unsigned int) -1)
    type_indx = indx;
  else
    {
      type_indx = info->type_indx;
      ++info->type_indx;
    }

  name_indx = info->name_indx;
  ++info->name_indx;

  if (name == NULL)
    name = "";

  /* If we were given a buffer, use it; otherwise, use either the
     local or the global type information, and make sure that the type
     block is started.  */
  if (buflist != NULL)
    {
      if (! FUNC1 (info, buflist))
	return FALSE;
    }
  else if (localp)
    {
      if (! FUNC0 (&info->types))
	{
	  if (! FUNC1 (info, &info->types))
	    return FALSE;
	}
      else
	{
	  if (! FUNC1 (info, &info->types)
	      || ! FUNC3 (info, (int) ieee_bb_record_enum)
	      || ! FUNC3 (info, 1)
	      || ! FUNC5 (info, 0)
	      || ! FUNC4 (info, info->modname))
	    return FALSE;
	}
    }
  else
    {
      if (! FUNC0 (&info->global_types))
	{
	  if (! FUNC1 (info, &info->global_types))
	    return FALSE;
	}
      else
	{
	  if (! FUNC1 (info, &info->global_types)
	      || ! FUNC3 (info, (int) ieee_bb_record_enum)
	      || ! FUNC3 (info, 2)
	      || ! FUNC5 (info, 0)
	      || ! FUNC4 (info, ""))
	    return FALSE;
	}
    }

  /* Push the new type on the type stack, write out an NN record, and
     write out the start of a TY record.  The caller will then finish
     the TY record.  */
  if (! FUNC2 (info, type_indx, size, unsignedp, localp))
    return FALSE;

  return (FUNC3 (info, (int) ieee_nn_record)
	  && FUNC5 (info, name_indx)
	  && FUNC4 (info, name)
	  && FUNC3 (info, (int) ieee_ty_record_enum)
	  && FUNC5 (info, type_indx)
	  && FUNC3 (info, 0xce)
	  && FUNC5 (info, name_indx));
}