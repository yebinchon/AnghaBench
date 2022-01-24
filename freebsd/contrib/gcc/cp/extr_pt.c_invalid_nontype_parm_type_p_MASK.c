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
typedef  int tsubst_flags_t ;
typedef  int /*<<< orphan*/  tree ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ TEMPLATE_TYPE_PARM ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 scalar_t__ TYPENAME_TYPE ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,int /*<<< orphan*/ ) ; 
 int tf_error ; 

__attribute__((used)) static int
FUNC5 (tree type, tsubst_flags_t complain)
{
  if (FUNC0 (type))
    return 0;
  else if (FUNC1 (type))
    return 0;
  else if (FUNC3 (type))
    return 0;
  else if (FUNC2 (type) == TEMPLATE_TYPE_PARM)
    return 0;
  else if (FUNC2 (type) == TYPENAME_TYPE)
    return 0;

  if (complain & tf_error)
    FUNC4 ("%q#T is not a valid type for a template constant parameter", type);
  return 1;
}