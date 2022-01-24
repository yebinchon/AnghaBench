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
struct type {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 scalar_t__ TYPE_CODE_PTR ; 
 char* FUNC1 (struct type*,int /*<<< orphan*/ ) ; 
 struct type* FUNC2 (struct type*,int /*<<< orphan*/ ) ; 
 char* FUNC3 (struct type*) ; 
 scalar_t__ FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 scalar_t__ FUNC7 (char*,char*,int) ; 

__attribute__((used)) static char *
FUNC8 (struct type *functype)
{
  struct type *first_param_type;
  char *first_param_name;
  struct type *pointed_to_type;
  char *class_name;

  /* Check that the function has a first argument "this",
   * and that "this" is a pointer to a class. If not,
   * functype is not a member function, so return NULL.
   */
  if (FUNC4 (functype) == 0)
    return NULL;
  first_param_name = FUNC1 (functype, 0);
  if (first_param_name == NULL)
    return NULL;		/* paranoia */
  if (FUNC6 (first_param_name, "this"))
    return NULL;
  first_param_type = FUNC2 (functype, 0);
  if (first_param_type == NULL)
    return NULL;		/* paranoia */
  if (FUNC0 (first_param_type) != TYPE_CODE_PTR)
    return NULL;

  /* Get the thing that "this" points to, check that
   * it's a class, and get its class name.
   */
  pointed_to_type = FUNC5 (first_param_type);
  if (pointed_to_type == NULL)
    return NULL;		/* paranoia */
  if (FUNC0 (pointed_to_type) != TYPE_CODE_CLASS)
    return NULL;
  class_name = FUNC3 (pointed_to_type);
  if (class_name == NULL)
    return NULL;		/* paranoia */

  /* The class name may be of the form "class c", in which case
   * we want to strip off the leading "class ".
   */
  if (FUNC7 (class_name, "class ", 6) == 0)
    class_name += 6;

  return class_name;
}