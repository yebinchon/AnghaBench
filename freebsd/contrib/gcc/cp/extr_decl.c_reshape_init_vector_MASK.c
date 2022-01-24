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
typedef  char* tree ;
struct TYPE_6__ {TYPE_1__* cur; } ;
typedef  TYPE_2__ reshape_iter ;
struct TYPE_5__ {char* value; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 char* NULL_TREE ; 
 scalar_t__ FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ ) ; 
 char* FUNC5 (char*) ; 
 scalar_t__ VECTOR_TYPE ; 
 char* FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*,int /*<<< orphan*/ ,char*) ; 
 char* error_mark_node ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 char* FUNC9 (int /*<<< orphan*/ ,char*,TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,char*) ; 

__attribute__((used)) static tree
FUNC11 (tree type, reshape_iter *d)
{
  tree max_index = NULL_TREE;
  tree rtype;

  FUNC8 (FUNC1 (type) == VECTOR_TYPE);

  if (FUNC0 (d->cur->value))
    {
      tree value = d->cur->value;
      if (!FUNC10 (FUNC2 (value), type))
	{
	  FUNC7 ("invalid type %qT as initializer for a vector of type %qT",
		FUNC2 (d->cur->value), type);
	  value = error_mark_node;
	}
      ++d->cur;
      return value;
    }

  /* For a vector, the representation type is a struct
      containing a single member which is an array of the
      appropriate size.  */
  rtype = FUNC3 (type);
  if (rtype && FUNC4 (FUNC2 (FUNC5 (rtype))))
    max_index = FUNC6 (FUNC2 (FUNC5 (rtype)));

  return FUNC9 (FUNC2 (type), max_index, d);
}