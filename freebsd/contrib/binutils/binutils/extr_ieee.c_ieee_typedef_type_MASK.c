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
struct ieee_name_type_hash_entry {struct ieee_name_type* types; } ;
struct TYPE_4__ {int /*<<< orphan*/  localp; int /*<<< orphan*/  unsignedp; int /*<<< orphan*/  size; int /*<<< orphan*/  indx; } ;
struct ieee_name_type {TYPE_2__ type; } ;
struct ieee_handle {TYPE_1__* type_stack; int /*<<< orphan*/  typedefs; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_3__ {TYPE_2__ type; } ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 struct ieee_name_type_hash_entry* FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct ieee_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC3 (void *p, const char *name)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt;

  h = FUNC1 (&info->typedefs, name, FALSE, FALSE);

  /* h should never be NULL, since that would imply that the generic
     debugging code has asked for a typedef which it has not yet
     defined.  */
  FUNC0 (h != NULL);

  /* We always use the most recently defined type for this name, which
     will be the first one on the list.  */

  nt = h->types;
  if (! FUNC2 (info, nt->type.indx, nt->type.size,
			nt->type.unsignedp, nt->type.localp))
    return FALSE;

  /* Copy over any other type information we may have.  */
  info->type_stack->type = nt->type;

  return TRUE;
}