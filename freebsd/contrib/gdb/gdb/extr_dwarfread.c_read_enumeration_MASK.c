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
struct objfile {int dummy; } ;
struct dieinfo {int dummy; } ;
typedef  struct type* SYMBOL_TYPE ;

/* Variables and functions */
 scalar_t__ cu_language ; 
 struct type* FUNC0 (struct dieinfo*,struct objfile*) ; 
 scalar_t__ language_cplus ; 
 struct symbol* FUNC1 (struct dieinfo*,struct objfile*) ; 
 int /*<<< orphan*/  FUNC2 (struct dieinfo*,struct objfile*,struct type*) ; 

__attribute__((used)) static void
FUNC3 (struct dieinfo *dip, char *thisdie, char *enddie,
		  struct objfile *objfile)
{
  struct type *type;
  struct symbol *sym;

  type = FUNC0 (dip, objfile);
  sym = FUNC1 (dip, objfile);
  if (sym != NULL)
    {
      SYMBOL_TYPE (sym) = type;
      if (cu_language == language_cplus)
	{
	  FUNC2 (dip, objfile, type);
	}
    }
}