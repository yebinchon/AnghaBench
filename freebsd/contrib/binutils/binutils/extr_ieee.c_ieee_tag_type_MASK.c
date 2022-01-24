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
struct TYPE_6__ {int /*<<< orphan*/  string; } ;
struct ieee_name_type_hash_entry {TYPE_3__ root; struct ieee_name_type* types; } ;
struct TYPE_4__ {void* unsignedp; void* localp; int /*<<< orphan*/  name; scalar_t__ indx; int /*<<< orphan*/  size; } ;
struct ieee_name_type {char const* tag; unsigned int id; int kind; TYPE_1__ type; struct ieee_name_type* next; scalar_t__ indx; void* defined; } ;
struct ieee_handle {TYPE_2__* type_stack; scalar_t__ type_indx; int /*<<< orphan*/  tags; struct ieee_name_type* enums; } ;
struct ieee_defined_enum {char const* tag; unsigned int id; int kind; TYPE_1__ type; struct ieee_defined_enum* next; scalar_t__ indx; void* defined; } ;
typedef  enum debug_type_kind { ____Placeholder_debug_type_kind } debug_type_kind ;
typedef  void* bfd_boolean ;
struct TYPE_5__ {TYPE_1__ type; } ;

/* Variables and functions */
 int DEBUG_KIND_ENUM ; 
 void* FALSE ; 
 void* TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 struct ieee_name_type_hash_entry* FUNC1 (int /*<<< orphan*/ *,char const*,void*,void*) ; 
 void* FUNC2 (struct ieee_handle*,scalar_t__,int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC3 (struct ieee_name_type*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,unsigned int) ; 
 scalar_t__ FUNC5 (char const*,char const*) ; 
 scalar_t__ FUNC6 (int) ; 

__attribute__((used)) static bfd_boolean
FUNC7 (void *p, const char *name, unsigned int id,
	       enum debug_type_kind kind)
{
  struct ieee_handle *info = (struct ieee_handle *) p;
  bfd_boolean localp;
  bfd_boolean copy;
  char ab[20];
  struct ieee_name_type_hash_entry *h;
  struct ieee_name_type *nt;

  if (kind == DEBUG_KIND_ENUM)
    {
      struct ieee_defined_enum *e;

      if (name == NULL)
	FUNC0 ();
      for (e = info->enums; e != NULL; e = e->next)
	if (e->tag != NULL && FUNC5 (e->tag, name) == 0)
	  return FUNC2 (info, e->indx, 0, TRUE, FALSE);

      e = (struct ieee_defined_enum *) FUNC6 (sizeof *e);
      FUNC3 (e, 0, sizeof *e);

      e->indx = info->type_indx;
      ++info->type_indx;
      e->tag = name;
      e->defined = FALSE;

      e->next = info->enums;
      info->enums = e;

      return FUNC2 (info, e->indx, 0, TRUE, FALSE);
    }

  localp = FALSE;

  copy = FALSE;
  if (name == NULL)
    {
      FUNC4 (ab, "__anon%u", id);
      name = ab;
      copy = TRUE;
    }

  h = FUNC1 (&info->tags, name, TRUE, copy);
  if (h == NULL)
    return FALSE;

  for (nt = h->types; nt != NULL; nt = nt->next)
    {
      if (nt->id == id)
	{
	  if (! FUNC2 (info, nt->type.indx, nt->type.size,
				nt->type.unsignedp, nt->type.localp))
	    return FALSE;
	  /* Copy over any other type information we may have.  */
	  info->type_stack->type = nt->type;
	  return TRUE;
	}

      if (! nt->type.localp)
	{
	  /* This is a duplicate of a global type, so it must be
             local.  */
	  localp = TRUE;
	}
    }

  nt = (struct ieee_name_type *) FUNC6 (sizeof *nt);
  FUNC3 (nt, 0, sizeof *nt);

  nt->id = id;
  nt->type.name = h->root.string;
  nt->type.indx = info->type_indx;
  nt->type.localp = localp;
  ++info->type_indx;
  nt->kind = kind;

  nt->next = h->types;
  h->types = nt;

  if (! FUNC2 (info, nt->type.indx, 0, FALSE, localp))
    return FALSE;

  info->type_stack->type.name = h->root.string;

  return TRUE;
}