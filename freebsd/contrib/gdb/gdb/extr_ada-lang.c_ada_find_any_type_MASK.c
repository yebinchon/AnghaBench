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
struct symbol {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOC_TYPEDEF ; 
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 struct type* FUNC1 (struct symbol*) ; 
 int /*<<< orphan*/  VAR_DOMAIN ; 
 struct symbol* FUNC2 (char const*,int /*<<< orphan*/ ) ; 

struct type *
FUNC3 (const char *name)
{
  struct symbol *sym;

  sym = FUNC2 (name, VAR_DOMAIN);
  if (sym != NULL && FUNC0 (sym) == LOC_TYPEDEF)
    return FUNC1 (sym);

  sym = FUNC2 (name, STRUCT_DOMAIN);
  if (sym != NULL)
    return FUNC1 (sym);

  return NULL;
}