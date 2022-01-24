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
struct demangle_component {int type; } ;

/* Variables and functions */
#define  DEMANGLE_COMPONENT_CONST_THIS 131 
#define  DEMANGLE_COMPONENT_RESTRICT_THIS 130 
#define  DEMANGLE_COMPONENT_TEMPLATE 129 
#define  DEMANGLE_COMPONENT_VOLATILE_THIS 128 
 struct demangle_component* FUNC0 (struct demangle_component*) ; 
 int /*<<< orphan*/  FUNC1 (struct demangle_component*) ; 

__attribute__((used)) static int
FUNC2 (struct demangle_component *dc)
{
  if (dc == NULL)
    return 0;
  switch (dc->type)
    {
    default:
      return 0;
    case DEMANGLE_COMPONENT_TEMPLATE:
      return ! FUNC1 (FUNC0 (dc));
    case DEMANGLE_COMPONENT_RESTRICT_THIS:
    case DEMANGLE_COMPONENT_VOLATILE_THIS:
    case DEMANGLE_COMPONENT_CONST_THIS:
      return FUNC2 (FUNC0 (dc));
    }
}