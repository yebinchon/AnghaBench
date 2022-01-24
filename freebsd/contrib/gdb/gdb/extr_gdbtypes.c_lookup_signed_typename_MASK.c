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
struct block {int dummy; } ;

/* Variables and functions */
 char* FUNC0 (scalar_t__) ; 
 struct type* FUNC1 (char*,struct block*,int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*) ; 
 scalar_t__ FUNC3 (char*) ; 

struct type *
FUNC4 (char *name)
{
  struct type *t;
  char *uns = FUNC0 (FUNC3 (name) + 8);

  FUNC2 (uns, "signed ");
  FUNC2 (uns + 7, name);
  t = FUNC1 (uns, (struct block *) NULL, 1);
  /* If we don't find "signed FOO" just try again with plain "FOO". */
  if (t != NULL)
    return t;
  return FUNC1 (name, (struct block *) NULL, 0);
}