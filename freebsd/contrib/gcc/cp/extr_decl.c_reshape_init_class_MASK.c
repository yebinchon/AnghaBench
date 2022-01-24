#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ tree ;
struct TYPE_6__ {TYPE_1__* cur; TYPE_1__* end; } ;
typedef  TYPE_2__ reshape_iter ;
struct TYPE_5__ {char* index; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 scalar_t__ FIELD_DECL ; 
 int /*<<< orphan*/  NULL_TREE ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__) ; 
 scalar_t__ FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 scalar_t__ UNION_TYPE ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (char*,scalar_t__,...) ; 
 scalar_t__ error_mark_node ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (scalar_t__,char*,int) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 (int /*<<< orphan*/ ,TYPE_2__*,int) ; 

__attribute__((used)) static tree
FUNC13 (tree type, reshape_iter *d, bool first_initializer_p)
{
  tree field;
  tree new_init;

  FUNC9 (FUNC0 (type));

  /* The initializer for a class is always a CONSTRUCTOR.  */
  new_init = FUNC7 (NULL_TREE, NULL);
  field = FUNC11 (FUNC6 (type));

  if (!field)
    {
      /* [dcl.init.aggr]

	An initializer for an aggregate member that is an
	empty class shall have the form of an empty
	initializer-list {}.  */
      if (!first_initializer_p)
	{
	  FUNC8 ("initializer for %qT must be brace-enclosed", type);
	  return error_mark_node;
	}
      return new_init;
    }

  /* Loop through the initializable fields, gathering initializers.  */
  while (d->cur != d->end)
    {
      tree field_init;

      /* Handle designated initializers, as an extension.  */
      if (d->cur->index)
	{
	  field = FUNC10 (type, d->cur->index, /*want_type=*/false);

	  if (!field || FUNC4 (field) != FIELD_DECL)
	    {
	      FUNC8 ("%qT has no non-static data member named %qD", type,
		    d->cur->index);
	      return error_mark_node;
	    }
	}

      /* If we processed all the member of the class, we are done.  */
      if (!field)
	break;

      field_init = FUNC12 (FUNC5 (field), d,
				   /*first_initializer_p=*/false);
      FUNC1 (FUNC2 (new_init), field, field_init);

      /* [dcl.init.aggr]

	When a union  is  initialized with a brace-enclosed
	initializer, the braces shall only contain an
	initializer for the first member of the union.  */
      if (FUNC4 (type) == UNION_TYPE)
	break;

      field = FUNC11 (FUNC3 (field));
    }

  return new_init;
}