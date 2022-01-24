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
struct block {int dummy; } ;

/* Variables and functions */
 scalar_t__ LOC_TYPEDEF ; 
 int /*<<< orphan*/  STRUCT_DOMAIN ; 
 scalar_t__ FUNC0 (struct symbol*) ; 
 struct type* FUNC1 (struct symbol*) ; 
 int FUNC2 (struct type*) ; 
#define  TYPE_CODE_CLASS 129 
#define  TYPE_CODE_NAMESPACE 128 
 struct symbol* FUNC3 (char const*,struct block*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 

struct type *
FUNC5 (const char *name, struct block *block)
{
  struct symbol * rtti_sym;
  struct type * rtti_type;

  rtti_sym = FUNC3 (name, block, STRUCT_DOMAIN, NULL, NULL);

  if (rtti_sym == NULL)
    {
      FUNC4 ("RTTI symbol not found for class '%s'", name);
      return NULL;
    }

  if (FUNC0 (rtti_sym) != LOC_TYPEDEF)
    {
      FUNC4 ("RTTI symbol for class '%s' is not a type", name);
      return NULL;
    }

  rtti_type = FUNC1 (rtti_sym);

  switch (FUNC2 (rtti_type))
    {
    case TYPE_CODE_CLASS:
      break;
    case TYPE_CODE_NAMESPACE:
      /* chastain/2003-11-26: the symbol tables often contain fake
	 symbols for namespaces with the same name as the struct.
	 This warning is an indication of a bug in the lookup order
	 or a bug in the way that the symbol tables are populated.  */
      FUNC4 ("RTTI symbol for class '%s' is a namespace", name);
      return NULL;
    default:
      FUNC4 ("RTTI symbol for class '%s' has bad type", name);
      return NULL;
    }

  return rtti_type;
}