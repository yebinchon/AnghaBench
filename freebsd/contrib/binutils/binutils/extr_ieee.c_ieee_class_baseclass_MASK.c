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
struct ieee_handle {TYPE_5__* type_stack; } ;
typedef  enum debug_visibility { ____Placeholder_debug_visibility } debug_visibility ;
typedef  int bfd_vma ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_9__ {char* name; TYPE_3__* classdef; int /*<<< orphan*/  strdef; scalar_t__ localp; } ;
struct TYPE_10__ {TYPE_4__ type; TYPE_2__* next; } ;
struct TYPE_8__ {unsigned int indx; int pmisccount; int /*<<< orphan*/  pmiscbuf; } ;
struct TYPE_6__ {int /*<<< orphan*/  strdef; int /*<<< orphan*/ * classdef; } ;
struct TYPE_7__ {TYPE_1__ type; } ;

/* Variables and functions */
 unsigned int BASEFLAGS_PRIVATE ; 
 unsigned int BASEFLAGS_VIRTUAL ; 
 int DEBUG_VISIBILITY_PRIVATE ; 
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 unsigned int FUNC4 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,unsigned int,unsigned int) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,char*) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC9 (char*,char*,char const*) ; 
 int FUNC10 (char const*) ; 
 scalar_t__ FUNC11 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC12 (void *p, bfd_vma bitpos, bfd_boolean virtual,
		      enum debug_visibility visibility)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  const char *bname;
  bfd_boolean localp;
  unsigned int bindx;
  char *fname;
  unsigned int flags;
  unsigned int nindx;

  FUNC0 (info->type_stack != NULL
	  && info->type_stack->type.name != NULL
	  && info->type_stack->next != NULL
	  && info->type_stack->next->type.classdef != NULL
	  && ! FUNC2 (&info->type_stack->next->type.strdef));

  bname = info->type_stack->type.name;
  localp = info->type_stack->type.localp;
  bindx = FUNC4 (info);

  /* We are currently defining both a struct and a class.  We must
     write out a field definition in the struct which holds the base
     class.  The stabs debugging reader will create a field named
     _vb$CLASS for a virtual base class, so we just use that.  FIXME:
     we should not depend upon a detail of stabs debugging.  */
  if (virtual)
    {
      fname = (char *) FUNC11 (FUNC10 (bname) + sizeof "_vb$");
      FUNC9 (fname, "_vb$%s", bname);
      flags = BASEFLAGS_VIRTUAL;
    }
  else
    {
      if (localp)
	info->type_stack->type.localp = TRUE;

      fname = (char *) FUNC11 (FUNC10 (bname) + sizeof "_b$");
      FUNC9 (fname, "_b$%s", bname);

      if (! FUNC3 (info, &info->type_stack->type.strdef)
	  || ! FUNC7 (info, fname)
	  || ! FUNC8 (info, bindx)
	  || ! FUNC8 (info, bitpos / 8))
	return FALSE;
      flags = 0;
    }

  if (visibility == DEBUG_VISIBILITY_PRIVATE)
    flags |= BASEFLAGS_PRIVATE;

  nindx = info->type_stack->type.classdef->indx;

  if (! FUNC3 (info, &info->type_stack->type.classdef->pmiscbuf)
      || ! FUNC5 (info, nindx, 'b')
      || ! FUNC5 (info, nindx, flags)
      || ! FUNC6 (info, nindx, bname)
      || ! FUNC5 (info, nindx, 0)
      || ! FUNC6 (info, nindx, fname))
    return FALSE;
  info->type_stack->type.classdef->pmisccount += 5;

  FUNC1 (fname);

  return TRUE;
}