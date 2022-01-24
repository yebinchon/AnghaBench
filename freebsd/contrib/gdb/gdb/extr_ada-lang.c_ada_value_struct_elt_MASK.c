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
struct value {int dummy; } ;
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 scalar_t__ TYPE_CODE_REF ; 
 scalar_t__ TYPE_CODE_STRUCT ; 
 scalar_t__ TYPE_CODE_UNION ; 
 int /*<<< orphan*/  FUNC1 (struct value*) ; 
 struct value* FUNC2 (struct value*) ; 
 struct value* FUNC3 (char*,struct value*,int /*<<< orphan*/ ,struct type*) ; 
 struct value* FUNC4 (struct value*) ; 
 struct type* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 

struct value *
FUNC7 (struct value *arg, char *name, char *err)
{
  struct type *t;
  struct value *v;

  arg = FUNC2 (arg);
  t = FUNC5 (FUNC1 (arg));

  /* Follow pointers until we get to a non-pointer.  */

  while (FUNC0 (t) == TYPE_CODE_PTR || FUNC0 (t) == TYPE_CODE_REF)
    {
      arg = FUNC4 (arg);
      t = FUNC5 (FUNC1 (arg));
    }

  if (FUNC0 (t) != TYPE_CODE_STRUCT && FUNC0 (t) != TYPE_CODE_UNION)
    FUNC6 ("Attempt to extract a component of a value that is not a %s.",
	   err);

  v = FUNC3 (name, arg, 0, t);
  if (v == NULL)
    FUNC6 ("There is no member named %s.", name);

  return v;
}