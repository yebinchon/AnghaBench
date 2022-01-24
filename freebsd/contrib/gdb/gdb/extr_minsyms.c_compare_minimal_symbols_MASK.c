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
struct minimal_symbol {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (struct minimal_symbol const*) ; 
 scalar_t__ FUNC1 (struct minimal_symbol const*) ; 
 int FUNC2 (char*,char*) ; 

__attribute__((used)) static int
FUNC3 (const void *fn1p, const void *fn2p)
{
  const struct minimal_symbol *fn1;
  const struct minimal_symbol *fn2;

  fn1 = (const struct minimal_symbol *) fn1p;
  fn2 = (const struct minimal_symbol *) fn2p;

  if (FUNC1 (fn1) < FUNC1 (fn2))
    {
      return (-1);		/* addr 1 is less than addr 2 */
    }
  else if (FUNC1 (fn1) > FUNC1 (fn2))
    {
      return (1);		/* addr 1 is greater than addr 2 */
    }
  else
    /* addrs are equal: sort by name */
    {
      char *name1 = FUNC0 (fn1);
      char *name2 = FUNC0 (fn2);

      if (name1 && name2)	/* both have names */
	return FUNC2 (name1, name2);
      else if (name2)
	return 1;		/* fn1 has no name, so it is "less" */
      else if (name1)		/* fn2 has no name, so it is "less" */
	return -1;
      else
	return (0);		/* neither has a name, so they're equal. */
    }
}