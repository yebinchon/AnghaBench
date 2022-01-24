#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct ieee_handle {unsigned int name_indx; TYPE_5__* type_stack; } ;
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  unsigned int bfd_vma ;
typedef  int bfd_boolean ;
struct TYPE_9__ {unsigned int size; int unsignedp; int referencep; int localp; char const* name; int /*<<< orphan*/  strdef; TYPE_3__* classdef; } ;
struct TYPE_10__ {TYPE_4__ type; TYPE_2__* next; } ;
struct TYPE_8__ {unsigned int indx; int pmisccount; int /*<<< orphan*/  refs; int /*<<< orphan*/  pmiscbuf; } ;
struct TYPE_6__ {scalar_t__ ignorep; int /*<<< orphan*/  strdef; } ;
struct TYPE_7__ {TYPE_1__ type; } ;

/* Variables and functions */
 int FALSE ; 
 int TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 scalar_t__ ieee_atn_record_enum ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ ,int,int) ; 
 scalar_t__ ieee_nn_record ; 
 unsigned int FUNC4 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*) ; 
 unsigned int FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_handle*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC10 (struct ieee_handle*,int) ; 
 scalar_t__ FUNC11 (struct ieee_handle*,char const*) ; 
 scalar_t__ FUNC12 (struct ieee_handle*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (void *p, const char *name, bfd_vma bitpos, bfd_vma bitsize,
		   enum debug_visibility visibility)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  unsigned int size;
  bfd_boolean unsignedp;
  bfd_boolean referencep;
  bfd_boolean localp;
  unsigned int indx;
  bfd_vma offset;

  FUNC0 (info->type_stack != NULL
	  && info->type_stack->next != NULL
	  && ! FUNC1 (&info->type_stack->next->type.strdef));

  /* If we are ignoring this struct definition, just pop and ignore
     the type.  */
  if (info->type_stack->next->type.ignorep)
    {
      FUNC5 (info);
      return TRUE;
    }

  size = info->type_stack->type.size;
  unsignedp = info->type_stack->type.unsignedp;
  referencep = info->type_stack->type.referencep;
  localp = info->type_stack->type.localp;
  indx = FUNC4 (info);

  if (localp)
    info->type_stack->type.localp = TRUE;

  if (info->type_stack->type.classdef != NULL)
    {
      unsigned int flags;
      unsigned int nindx;

      /* This is a class.  We must add a description of this field to
         the class records we are building.  */

      flags = FUNC6 (visibility);
      nindx = info->type_stack->type.classdef->indx;
      if (! FUNC2 (info,
				&info->type_stack->type.classdef->pmiscbuf)
	  || ! FUNC8 (info, nindx, 'd')
	  || ! FUNC8 (info, nindx, flags)
	  || ! FUNC9 (info, nindx, name)
	  || ! FUNC9 (info, nindx, name))
	return FALSE;
      info->type_stack->type.classdef->pmisccount += 4;

      if (referencep)
	{
	  unsigned int nindx;

	  /* We need to output a record recording that this field is
             really of reference type.  We put this on the refs field
             of classdef, so that it can be appended to the C++
             records after the class is defined.  */

	  nindx = info->name_indx;
	  ++info->name_indx;

	  if (! FUNC2 (info,
				    &info->type_stack->type.classdef->refs)
	      || ! FUNC10 (info, (int) ieee_nn_record)
	      || ! FUNC12 (info, nindx)
	      || ! FUNC11 (info, "")
	      || ! FUNC7 (info, (int) ieee_atn_record_enum)
	      || ! FUNC12 (info, nindx)
	      || ! FUNC12 (info, 0)
	      || ! FUNC12 (info, 62)
	      || ! FUNC12 (info, 80)
	      || ! FUNC12 (info, 4)
	      || ! FUNC8 (info, nindx, 'R')
	      || ! FUNC8 (info, nindx, 3)
	      || ! FUNC9 (info, nindx, info->type_stack->type.name)
	      || ! FUNC9 (info, nindx, name))
	    return FALSE;
	}
    }

  /* If the bitsize doesn't match the expected size, we need to output
     a bitfield type.  */
  if (size == 0 || bitsize == 0 || bitsize == size * 8)
    offset = bitpos / 8;
  else
    {
      if (! FUNC3 (info, 0, unsignedp,
			      info->type_stack->type.localp)
	  || ! FUNC12 (info, 'g')
	  || ! FUNC12 (info, unsignedp ? 0 : 1)
	  || ! FUNC12 (info, bitsize)
	  || ! FUNC12 (info, indx))
	return FALSE;
      indx = FUNC4 (info);
      offset = bitpos;
    }

  /* Switch to the struct we are building in order to output this
     field definition.  */
  return (FUNC2 (info, &info->type_stack->type.strdef)
	  && FUNC11 (info, name)
	  && FUNC12 (info, indx)
	  && FUNC12 (info, offset));
}