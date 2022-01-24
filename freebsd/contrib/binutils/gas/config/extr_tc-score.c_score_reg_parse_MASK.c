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
struct reg_entry {int number; } ;
struct hash_control {int dummy; } ;

/* Variables and functions */
 scalar_t__ FAIL ; 
 scalar_t__ FUNC0 (char) ; 
 scalar_t__ FUNC1 (char) ; 
 scalar_t__ FUNC2 (struct hash_control*,char*) ; 
 int /*<<< orphan*/  FUNC3 (char) ; 

__attribute__((used)) static int
FUNC4 (char **ccp, struct hash_control *htab)
{
  char *start = *ccp;
  char c;
  char *p;
  struct reg_entry *reg;

  p = start;
  if (!FUNC0 (*p) || !FUNC3 (*p))
    return (int) FAIL;

  c = *p++;

  while (FUNC0 (c) || FUNC1 (c) || c == '_')
    c = *p++;

  *--p = 0;
  reg = (struct reg_entry *) FUNC2 (htab, start);
  *p = c;

  if (reg)
    {
      *ccp = p;
      return reg->number;
    }
  return (int) FAIL;
}