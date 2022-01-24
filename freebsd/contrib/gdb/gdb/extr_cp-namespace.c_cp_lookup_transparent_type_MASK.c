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
 struct type* FUNC0 (char const*) ; 
 char* FUNC1 (int /*<<< orphan*/ ) ; 
 struct type* FUNC2 (char const*,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

struct type *
FUNC4 (const char *name)
{
  /* First, try the honest way of looking up the definition.  */
  struct type *t = FUNC0 (name);
  const char *scope;

  if (t != NULL)
    return t;

  /* If that doesn't work and we're within a namespace, look there
     instead.  */
  scope = FUNC1 (FUNC3 (0));

  if (scope[0] == '\0')
    return NULL;

  return FUNC2 (name, scope, 0);
}