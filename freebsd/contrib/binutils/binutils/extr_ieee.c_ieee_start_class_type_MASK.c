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
struct ieee_buflist {int dummy; } ;
struct ieee_type_class {unsigned int indx; int pmisccount; char const* vclass; scalar_t__ ownvptr; struct ieee_buflist pmiscbuf; } ;
struct ieee_handle {unsigned int name_indx; TYPE_2__* type_stack; } ;
typedef  scalar_t__ bfd_boolean ;
struct TYPE_3__ {char* name; struct ieee_type_class* classdef; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 scalar_t__ FALSE ; 
 scalar_t__ TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (struct ieee_handle*,struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,struct ieee_buflist*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC4 (void*,char const*,unsigned int,scalar_t__,unsigned int) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,unsigned int,char) ; 
 int /*<<< orphan*/  FUNC6 (struct ieee_handle*,unsigned int,char const*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_type_class*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*,unsigned int) ; 
 scalar_t__ FUNC9 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC10 (void *p, const char *tag, unsigned int id,
		       bfd_boolean structp, unsigned int size,
		       bfd_boolean vptr, bfd_boolean ownvptr)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  const char *vclass;
  struct ieee_buflist pmiscbuf;
  unsigned int indx;
  struct ieee_type_class *classdef;

  /* A C++ class is output as a C++ struct along with a set of pmisc
     records describing the class.  */

  /* We need to have a name so that we can associate the struct and
     the class.  */
  if (tag == NULL)
    {
      char *t;

      t = (char *) FUNC9 (20);
      FUNC8 (t, "__anon%u", id);
      tag = t;
    }

  /* We can't write out the virtual table information until we have
     finished the class, because we don't know the virtual table size.
     We get the size from the largest voffset we see.  */
  vclass = NULL;
  if (vptr && ! ownvptr)
    {
      vclass = info->type_stack->type.name;
      FUNC0 (vclass != NULL);
      /* We don't call ieee_pop_unused_type, since the class should
         get defined.  */
      (void) FUNC3 (info);
    }

  if (! FUNC4 (p, tag, id, structp, size))
    return FALSE;

  indx = info->name_indx;
  ++info->name_indx;

  /* We write out pmisc records into the classdef field.  We will
     write out the pmisc start after we know the number of records we
     need.  */
  if (! FUNC2 (info, &pmiscbuf)
      || ! FUNC1 (info, &pmiscbuf)
      || ! FUNC5 (info, indx, 'T')
      || ! FUNC5 (info, indx, structp ? 'o' : 'u')
      || ! FUNC6 (info, indx, tag))
    return FALSE;

  classdef = (struct ieee_type_class *) FUNC9 (sizeof *classdef);
  FUNC7 (classdef, 0, sizeof *classdef);

  classdef->indx = indx;
  classdef->pmiscbuf = pmiscbuf;
  classdef->pmisccount = 3;
  classdef->vclass = vclass;
  classdef->ownvptr = ownvptr;

  info->type_stack->type.classdef = classdef;

  return TRUE;
}