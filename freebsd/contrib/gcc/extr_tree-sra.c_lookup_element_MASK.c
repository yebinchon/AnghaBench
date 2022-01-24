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
typedef  void* tree ;
struct sra_elt {int is_group; int n_copies; struct sra_elt* children; struct sra_elt* sibling; struct sra_elt* groups; void* element; int /*<<< orphan*/  is_scalar; void* type; struct sra_elt* parent; } ;
typedef  enum insert_option { ____Placeholder_insert_option } insert_option ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*) ; 
 int INSERT ; 
 scalar_t__ FUNC1 (void*) ; 
 int NO_INSERT ; 
 scalar_t__ PARM_DECL ; 
 scalar_t__ FUNC2 (void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ,struct sra_elt*,int) ; 
 int /*<<< orphan*/  FUNC5 (void*) ; 
 int /*<<< orphan*/  FUNC6 (struct sra_elt*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  needs_copy_in ; 
 struct sra_elt* FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  sra_map ; 
 int /*<<< orphan*/  sra_obstack ; 

__attribute__((used)) static struct sra_elt *
FUNC8 (struct sra_elt *parent, tree child, tree type,
		enum insert_option insert)
{
  struct sra_elt dummy;
  struct sra_elt **slot;
  struct sra_elt *elt;

  if (parent)
    dummy.parent = parent->is_group ? parent->parent : parent;
  else
    dummy.parent = NULL;
  dummy.element = child;

  slot = (struct sra_elt **) FUNC4 (sra_map, &dummy, insert);
  if (!slot && insert == NO_INSERT)
    return NULL;

  elt = *slot;
  if (!elt && insert == INSERT)
    {
      *slot = elt = FUNC7 (&sra_obstack, sizeof (*elt));
      FUNC6 (elt, 0, sizeof (*elt));

      elt->parent = parent;
      elt->element = child;
      elt->type = type;
      elt->is_scalar = FUNC5 (type);

      if (parent)
	{
	  if (FUNC1 (elt->element))
	    {
	      elt->is_group = true;
	      elt->sibling = parent->groups;
	      parent->groups = elt;
	    }
	  else
	    {
	      elt->sibling = parent->children;
	      parent->children = elt;
	    }
	}

      /* If this is a parameter, then if we want to scalarize, we have
	 one copy from the true function parameter.  Count it now.  */
      if (FUNC2 (child) == PARM_DECL)
	{
	  elt->n_copies = 1;
	  FUNC3 (needs_copy_in, FUNC0 (child));
	}
    }

  return elt;
}