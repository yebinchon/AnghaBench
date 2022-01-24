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
typedef  int /*<<< orphan*/  tree ;
struct c_type_name {int dummy; } ;

/* Variables and functions */
 scalar_t__ INTEGER_CST ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct c_type_name*) ; 
 int warn_strict_prototypes ; 

tree
FUNC3 (struct c_type_name *type_name, tree expr)
{
  tree type;
  int saved_wsp = warn_strict_prototypes;

  /* This avoids warnings about unprototyped casts on
     integers.  E.g. "#define SIG_DFL (void(*)())0".  */
  if (FUNC0 (expr) == INTEGER_CST)
    warn_strict_prototypes = 0;
  type = FUNC2 (type_name);
  warn_strict_prototypes = saved_wsp;

  return FUNC1 (type, expr);
}