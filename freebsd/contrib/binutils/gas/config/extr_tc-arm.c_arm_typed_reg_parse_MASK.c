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
struct neon_type_el {int dummy; } ;
struct neon_typed_alias {int defined; struct neon_type_el eltype; } ;
typedef  enum arm_reg_type { ____Placeholder_arm_reg_type } arm_reg_type ;

/* Variables and functions */
 int FAIL ; 
 int NTA_HASINDEX ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int FUNC2 (char**,int,int*,struct neon_typed_alias*) ; 

__attribute__((used)) static int
FUNC3 (char **ccp, enum arm_reg_type type,
                     enum arm_reg_type *rtype, struct neon_type_el *vectype)
{
  struct neon_typed_alias atype;
  char *str = *ccp;
  int reg = FUNC2 (&str, type, rtype, &atype);

  if (reg == FAIL)
    return FAIL;

  /* Do not allow a scalar (reg+index) to parse as a register.  */
  if ((atype.defined & NTA_HASINDEX) != 0)
    {
      FUNC1 (FUNC0("register operand expected, but got scalar"));
      return FAIL;
    }

  if (vectype)
    *vectype = atype.eltype;

  *ccp = str;

  return reg;
}