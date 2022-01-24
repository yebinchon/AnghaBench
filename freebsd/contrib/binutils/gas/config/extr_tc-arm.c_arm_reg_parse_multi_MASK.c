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
struct reg_entry {int dummy; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 char OPTIONAL_REGISTER_PREFIX ; 
 char REGISTER_PREFIX ; 
 int /*<<< orphan*/  arm_reg_hsh ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static struct reg_entry *
FUNC4 (char **ccp)
{
  char *start = *ccp;
  char *p;
  struct reg_entry *reg;

#ifdef REGISTER_PREFIX
  if (*start != REGISTER_PREFIX)
    return NULL;
  start++;
#endif
#ifdef OPTIONAL_REGISTER_PREFIX
  if (*start == OPTIONAL_REGISTER_PREFIX)
    start++;
#endif

  p = start;
  if (!FUNC0 (*p) || !FUNC3 (*p))
    return NULL;

  do
    p++;
  while (FUNC0 (*p) || FUNC1 (*p) || *p == '_');

  reg = (struct reg_entry *) FUNC2 (arm_reg_hsh, start, p - start);

  if (!reg)
    return NULL;

  *ccp = p;
  return reg;
}