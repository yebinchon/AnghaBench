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
struct stab_handle {int dummy; } ;
typedef  scalar_t__ debug_type ;
typedef  int /*<<< orphan*/  debug_method ;
typedef  int /*<<< orphan*/  debug_field ;
typedef  int /*<<< orphan*/  debug_baseclass ;
typedef  int /*<<< orphan*/  bfd_vma ;
typedef  int /*<<< orphan*/  bfd_boolean ;

/* Variables and functions */
 scalar_t__ DEBUG_TYPE_NULL ; 
 scalar_t__ FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (char const**,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (void*,struct stab_handle*,char const**,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC4 (void*,struct stab_handle*,char const*,char const**,int const*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC5 (void*,struct stab_handle*,char const**,int /*<<< orphan*/ **,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (void*,struct stab_handle*,char const**,int const*,scalar_t__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static debug_type
FUNC7 (void *dhandle, struct stab_handle *info,
			const char *tagname, const char **pp,
			bfd_boolean structp, const int *typenums)
{
  const char *orig;
  bfd_vma size;
  debug_baseclass *baseclasses;
  debug_field *fields;
  bfd_boolean statics;
  debug_method *methods;
  debug_type vptrbase;
  bfd_boolean ownvptr;

  orig = *pp;

  /* Get the size.  */
  size = FUNC2 (pp, (bfd_boolean *) NULL);

  /* Get the other information.  */
  if (! FUNC3 (dhandle, info, pp, &baseclasses)
      || ! FUNC5 (dhandle, info, pp, &fields, &statics)
      || ! FUNC4 (dhandle, info, tagname, pp, typenums, &methods)
      || ! FUNC6 (dhandle, info, pp, typenums, &vptrbase,
				   &ownvptr))
    return DEBUG_TYPE_NULL;

  if (! statics
      && baseclasses == NULL
      && methods == NULL
      && vptrbase == DEBUG_TYPE_NULL
      && ! ownvptr)
    return FUNC1 (dhandle, structp, size, fields);

  return FUNC0 (dhandle, structp, size, fields, baseclasses,
				 methods, vptrbase, ownvptr);
}