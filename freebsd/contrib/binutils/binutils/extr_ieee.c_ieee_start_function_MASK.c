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
struct ieee_handle {char const* fnname; unsigned int name_indx; int /*<<< orphan*/  block_depth; int /*<<< orphan*/  vars; int /*<<< orphan*/  cxx; scalar_t__ fnargcount; int /*<<< orphan*/  fnargs; int /*<<< orphan*/  fntype; TYPE_2__* type_stack; } ;
typedef  int bfd_boolean ;
struct TYPE_3__ {int referencep; } ;
struct TYPE_4__ {TYPE_1__ type; } ;

/* Variables and functions */
 int FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 scalar_t__ ieee_atn_record_enum ; 
 scalar_t__ ieee_bb_record_enum ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (struct ieee_handle*,char const*,unsigned int,int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (struct ieee_handle*,int /*<<< orphan*/ *) ; 
 scalar_t__ ieee_nn_record ; 
 unsigned int FUNC6 (struct ieee_handle*) ; 
 int /*<<< orphan*/  FUNC7 (struct ieee_handle*,int) ; 
 int /*<<< orphan*/  FUNC8 (struct ieee_handle*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC9 (struct ieee_handle*,unsigned int,char const*) ; 
 scalar_t__ FUNC10 (struct ieee_handle*,int) ; 
 scalar_t__ FUNC11 (struct ieee_handle*,char const*) ; 
 scalar_t__ FUNC12 (struct ieee_handle*,unsigned int) ; 

__attribute__((used)) static bfd_boolean
FUNC13 (void *p, const char *name, bfd_boolean global)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean referencep;
  unsigned int retindx, typeindx;

  referencep = info->type_stack->type.referencep;
  retindx = FUNC6 (info);

  /* Besides recording a BB4 or BB6 block, we record the type of the
     function in the BB1 typedef block.  We can't write out the full
     type until we have seen all the parameters, so we accumulate it
     in info->fntype and info->fnargs.  */
  if (! FUNC2 (&info->fntype))
    {
      /* FIXME: This might happen someday if we support nested
         functions.  */
      FUNC0 ();
    }

  info->fnname = name;

  /* An attribute of 0x40 means that the push mask is unknown.  */
  if (! FUNC4 (info, name, (unsigned int) -1, 0, FALSE, TRUE,
				&info->fntype)
      || ! FUNC12 (info, 'x')
      || ! FUNC12 (info, 0x40)
      || ! FUNC12 (info, 0)
      || ! FUNC12 (info, 0)
      || ! FUNC12 (info, retindx))
    return FALSE;

  typeindx = FUNC6 (info);

  if (! FUNC5 (info, &info->fnargs))
    return FALSE;
  info->fnargcount = 0;

  /* If the function return value is actually a reference type, we
     must add a record indicating that.  */
  if (referencep)
    {
      unsigned int nindx;

      nindx = info->name_indx;
      ++info->name_indx;
      if (! FUNC3 (info, &info->cxx)
	  || ! FUNC10 (info, (int) ieee_nn_record)
	  || ! FUNC12 (info, nindx)
	  || ! FUNC11 (info, "")
	  || ! FUNC7 (info, (int) ieee_atn_record_enum)
	  || ! FUNC12 (info, nindx)
	  || ! FUNC12 (info, 0)
	  || ! FUNC12 (info, 62)
	  || ! FUNC12 (info, 80)
	  || ! FUNC12 (info, 3)
	  || ! FUNC8 (info, nindx, 'R')
	  || ! FUNC8 (info, nindx, global ? 0 : 1)
	  || ! FUNC9 (info, nindx, name))
	return FALSE;
    }

  FUNC1 (! FUNC2 (&info->vars));
  if (! FUNC3 (info, &info->vars))
    return FALSE;

  /* The address is written out as the first block.  */

  ++info->block_depth;

  return (FUNC10 (info, (int) ieee_bb_record_enum)
	  && FUNC10 (info, global ? 4 : 6)
	  && FUNC12 (info, 0)
	  && FUNC11 (info, name)
	  && FUNC12 (info, 0)
	  && FUNC12 (info, typeindx));
}