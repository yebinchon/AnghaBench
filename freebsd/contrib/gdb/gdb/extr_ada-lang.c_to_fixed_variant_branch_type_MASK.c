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
typedef  int /*<<< orphan*/  CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_PTR ; 
 struct type* FUNC1 (struct type*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct type*) ; 
 struct type* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct value*) ; 
 int /*<<< orphan*/  FUNC5 (struct value*) ; 
 struct type* FUNC6 (struct type*,char*) ; 
 int FUNC7 (struct type*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (struct type*) ; 
 struct type* FUNC9 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct type*,int) ; 
 struct type* FUNC11 (struct type*,char*,int /*<<< orphan*/ ,struct value*) ; 

__attribute__((used)) static struct type *
FUNC12 (struct type *var_type0, char *valaddr,
			      CORE_ADDR address, struct value *dval)
{
  int which;
  struct type *templ_type;
  struct type *var_type;

  if (FUNC0 (var_type0) == TYPE_CODE_PTR)
    var_type = FUNC3 (var_type0);
  else
    var_type = var_type0;

  templ_type = FUNC6 (var_type, "___XVU");

  if (templ_type != NULL)
    var_type = templ_type;

  which =
    FUNC7 (var_type,
			       FUNC5 (dval), FUNC4 (dval));

  if (which < 0)
    return FUNC9 (FUNC2 (var_type));
  else if (FUNC10 (var_type, which))
    return
      FUNC11
      (FUNC3 (FUNC1 (var_type, which)),
       valaddr, address, dval);
  else if (FUNC8 (FUNC1 (var_type, which)))
    return
      FUNC11
      (FUNC1 (var_type, which), valaddr, address, dval);
  else
    return FUNC1 (var_type, which);
}