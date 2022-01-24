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
struct demangle_component {scalar_t__ type; } ;
struct d_info {int dummy; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_TYPE ; 
 int /*<<< orphan*/  DEMANGLE_COMPONENT_PTRMEM_TYPE ; 
 struct demangle_component* FUNC0 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC1 (struct d_info*,struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC2 (struct d_info*,char) ; 
 struct demangle_component** FUNC3 (struct d_info*,struct demangle_component**,int) ; 
 struct demangle_component* FUNC4 (struct d_info*,int /*<<< orphan*/ ,struct demangle_component*,struct demangle_component*) ; 

__attribute__((used)) static struct demangle_component *
FUNC5 (struct d_info *di)
{
  struct demangle_component *cl;
  struct demangle_component *mem;
  struct demangle_component **pmem;

  if (! FUNC2 (di, 'M'))
    return NULL;

  cl = FUNC0 (di);

  /* The ABI specifies that any type can be a substitution source, and
     that M is followed by two types, and that when a CV-qualified
     type is seen both the base type and the CV-qualified types are
     substitution sources.  The ABI also specifies that for a pointer
     to a CV-qualified member function, the qualifiers are attached to
     the second type.  Given the grammar, a plain reading of the ABI
     suggests that both the CV-qualified member function and the
     non-qualified member function are substitution sources.  However,
     g++ does not work that way.  g++ treats only the CV-qualified
     member function as a substitution source.  FIXME.  So to work
     with g++, we need to pull off the CV-qualifiers here, in order to
     avoid calling add_substitution() in cplus_demangle_type().  But
     for a CV-qualified member which is not a function, g++ does
     follow the ABI, so we need to handle that case here by calling
     d_add_substitution ourselves.  */

  pmem = FUNC3 (di, &mem, 1);
  if (pmem == NULL)
    return NULL;
  *pmem = FUNC0 (di);
  if (*pmem == NULL)
    return NULL;

  if (pmem != &mem && (*pmem)->type != DEMANGLE_COMPONENT_FUNCTION_TYPE)
    {
      if (! FUNC1 (di, mem))
	return NULL;
    }

  return FUNC4 (di, DEMANGLE_COMPONENT_PTRMEM_TYPE, cl, mem);
}