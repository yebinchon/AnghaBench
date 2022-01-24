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
struct neon_type {int elems; struct neon_type_el* el; } ;

/* Variables and functions */
 int FAIL ; 
 scalar_t__ SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (struct neon_type*,char**) ; 

__attribute__((used)) static int
FUNC3 (struct neon_type_el *vectype, char **ccp)
{
  char *str = *ccp;
  struct neon_type optype;

  if (*str == '.')
    {
      if (FUNC2 (&optype, &str) == SUCCESS)
        {
          if (optype.elems == 1)
            *vectype = optype.el[0];
          else
            {
              FUNC1 (FUNC0("only one type should be specified for operand"));
              return FAIL;
            }
        }
      else
        {
          FUNC1 (FUNC0("vector type expected"));
          return FAIL;
        }
    }
  else
    return FAIL;
  
  *ccp = str;
  
  return SUCCESS;
}