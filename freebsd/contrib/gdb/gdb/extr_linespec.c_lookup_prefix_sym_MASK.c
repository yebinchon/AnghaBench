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
struct symtab {int dummy; } ;
struct symbol {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 scalar_t__ FUNC0 (int) ; 
 struct symbol* FUNC1 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct symtab**) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 

__attribute__((used)) static struct symbol *
FUNC3 (char **argptr, char *p)
{
  char *p1;
  char *copy;

  /* Extract the class name.  */
  p1 = p;
  while (p != *argptr && p[-1] == ' ')
    --p;
  copy = (char *) FUNC0 (p - *argptr + 1);
  FUNC2 (copy, *argptr, p - *argptr);
  copy[p - *argptr] = 0;

  /* Discard the class name from the argptr.  */
  p = p1 + (p1[0] == ':' ? 2 : 1);
  while (*p == ' ' || *p == '\t')
    p++;
  *argptr = p;

  /* At this point p1->"::inA::fun", p->"inA::fun" copy->"AAA",
     argptr->"inA::fun" */

  return FUNC1 (copy, 0, STRUCT_DOMAIN, 0,
			(struct symtab **) NULL);
}