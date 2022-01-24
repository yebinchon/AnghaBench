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
struct ieee_handle {TYPE_3__* type_stack; int /*<<< orphan*/  cxx; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_5__ {TYPE_1__* classdef; scalar_t__ ignorep; } ;
struct TYPE_6__ {TYPE_2__ type; } ;
struct TYPE_4__ {unsigned int indx; char* vclass; char voffset; int pmisccount; int /*<<< orphan*/  refs; int /*<<< orphan*/  pmiscbuf; scalar_t__ ownvptr; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_atn_record_enum ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (void*) ; 
 scalar_t__ ieee_nn_record ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,unsigned int,char) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,unsigned int,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee_handle*,int) ; 

__attribute__((used)) static bfd_boolean
FUNC11 (void *p)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int nindx;

  FUNC0 (info->type_stack != NULL
	  && info->type_stack->type.classdef != NULL);

  /* If we were ignoring this class definition because it was a
     duplicate definition, just through away whatever bytes we have
     accumulated.  Leave the type on the stack.  */
  if (info->type_stack->type.ignorep)
    return TRUE;

  nindx = info->type_stack->type.classdef->indx;

  /* If we have a virtual table, we can write out the information now.  */
  if (info->type_stack->type.classdef->vclass != NULL
      || info->type_stack->type.classdef->ownvptr)
    {
      if (! FUNC3 (info,
				&info->type_stack->type.classdef->pmiscbuf)
	  || ! FUNC6 (info, nindx, 'z')
	  || ! FUNC7 (info, nindx, "")
	  || ! FUNC6 (info, nindx,
			       info->type_stack->type.classdef->voffset))
	return FALSE;
      if (info->type_stack->type.classdef->ownvptr)
	{
	  if (! FUNC7 (info, nindx, ""))
	    return FALSE;
	}
      else
	{
	  if (! FUNC7 (info, nindx,
				  info->type_stack->type.classdef->vclass))
	    return FALSE;
	}
      if (! FUNC6 (info, nindx, 0))
	return FALSE;
      info->type_stack->type.classdef->pmisccount += 5;
    }

  /* Now that we know the number of pmisc records, we can write out
     the atn62 which starts the pmisc records, and append them to the
     C++ buffers.  */

  if (! FUNC3 (info, &info->cxx)
      || ! FUNC8 (info, (int) ieee_nn_record)
      || ! FUNC10 (info, nindx)
      || ! FUNC9 (info, "")
      || ! FUNC5 (info, (int) ieee_atn_record_enum)
      || ! FUNC10 (info, nindx)
      || ! FUNC10 (info, 0)
      || ! FUNC10 (info, 62)
      || ! FUNC10 (info, 80)
      || ! FUNC10 (info,
			      info->type_stack->type.classdef->pmisccount))
    return FALSE;

  if (! FUNC1 (info, &info->cxx,
			    &info->type_stack->type.classdef->pmiscbuf))
    return FALSE;
  if (! FUNC2 (&info->type_stack->type.classdef->refs))
    {
      if (! FUNC1 (info, &info->cxx,
				&info->type_stack->type.classdef->refs))
	return FALSE;
    }

  return FUNC4 (p);
}