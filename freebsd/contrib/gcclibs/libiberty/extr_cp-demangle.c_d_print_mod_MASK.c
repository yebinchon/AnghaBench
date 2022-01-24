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
struct d_print_info {int options; } ;

/* Variables and functions */
#define  DEMANGLE_COMPONENT_COMPLEX 140 
#define  DEMANGLE_COMPONENT_CONST 139 
#define  DEMANGLE_COMPONENT_CONST_THIS 138 
#define  DEMANGLE_COMPONENT_IMAGINARY 137 
#define  DEMANGLE_COMPONENT_POINTER 136 
#define  DEMANGLE_COMPONENT_PTRMEM_TYPE 135 
#define  DEMANGLE_COMPONENT_REFERENCE 134 
#define  DEMANGLE_COMPONENT_RESTRICT 133 
#define  DEMANGLE_COMPONENT_RESTRICT_THIS 132 
#define  DEMANGLE_COMPONENT_TYPED_NAME 131 
#define  DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL 130 
#define  DEMANGLE_COMPONENT_VOLATILE 129 
#define  DEMANGLE_COMPONENT_VOLATILE_THIS 128 
 int DMGL_JAVA ; 
 int /*<<< orphan*/  FUNC0 (struct d_print_info*,char) ; 
 int /*<<< orphan*/  FUNC1 (struct d_print_info*,char*) ; 
 char FUNC2 (struct d_print_info*) ; 
 struct demangle_component const* FUNC3 (struct demangle_component const*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_print_info*,struct demangle_component const*) ; 
 struct demangle_component const* FUNC5 (struct demangle_component const*) ; 

__attribute__((used)) static void
FUNC6 (struct d_print_info *dpi,
             const struct demangle_component *mod)
{
  switch (mod->type)
    {
    case DEMANGLE_COMPONENT_RESTRICT:
    case DEMANGLE_COMPONENT_RESTRICT_THIS:
      FUNC1 (dpi, " restrict");
      return;
    case DEMANGLE_COMPONENT_VOLATILE:
    case DEMANGLE_COMPONENT_VOLATILE_THIS:
      FUNC1 (dpi, " volatile");
      return;
    case DEMANGLE_COMPONENT_CONST:
    case DEMANGLE_COMPONENT_CONST_THIS:
      FUNC1 (dpi, " const");
      return;
    case DEMANGLE_COMPONENT_VENDOR_TYPE_QUAL:
      FUNC0 (dpi, ' ');
      FUNC4 (dpi, FUNC5 (mod));
      return;
    case DEMANGLE_COMPONENT_POINTER:
      /* There is no pointer symbol in Java.  */
      if ((dpi->options & DMGL_JAVA) == 0)
	FUNC0 (dpi, '*');
      return;
    case DEMANGLE_COMPONENT_REFERENCE:
      FUNC0 (dpi, '&');
      return;
    case DEMANGLE_COMPONENT_COMPLEX:
      FUNC1 (dpi, "complex ");
      return;
    case DEMANGLE_COMPONENT_IMAGINARY:
      FUNC1 (dpi, "imaginary ");
      return;
    case DEMANGLE_COMPONENT_PTRMEM_TYPE:
      if (FUNC2 (dpi) != '(')
	FUNC0 (dpi, ' ');
      FUNC4 (dpi, FUNC3 (mod));
      FUNC1 (dpi, "::*");
      return;
    case DEMANGLE_COMPONENT_TYPED_NAME:
      FUNC4 (dpi, FUNC3 (mod));
      return;
    default:
      /* Otherwise, we have something that won't go back on the
	 modifier stack, so we can just print it.  */
      FUNC4 (dpi, mod);
      return;
    }
}