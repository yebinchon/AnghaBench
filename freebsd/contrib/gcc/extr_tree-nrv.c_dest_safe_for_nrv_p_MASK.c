#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tree ;
typedef  TYPE_1__* subvar_t ;
struct TYPE_3__ {int /*<<< orphan*/  var; struct TYPE_3__* next; } ;

/* Variables and functions */
#define  ARRAY_REF 130 
#define  COMPONENT_REF 129 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
#define  VAR_DECL 128 
 TYPE_1__* FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static bool
FUNC4 (tree dest)
{
  switch (FUNC0 (dest))
    {
      case VAR_DECL:
	{
	  subvar_t subvar;
	  if (FUNC3 (dest))
	    return false;
	  for (subvar = FUNC2 (dest);
	       subvar;
	       subvar = subvar->next)
	    if (FUNC3 (subvar->var))
	      return false;
	  return true;
	}
      case ARRAY_REF:
      case COMPONENT_REF:
	return FUNC4 (FUNC1 (dest, 0));
      default:
	return false;
    }
}