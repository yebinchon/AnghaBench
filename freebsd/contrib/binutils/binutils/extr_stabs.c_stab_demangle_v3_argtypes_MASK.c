#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_5__ ;
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct stab_handle {int dummy; } ;
struct TYPE_9__ {TYPE_3__* right; } ;
struct TYPE_10__ {TYPE_4__ s_binary; } ;
struct demangle_component {scalar_t__ type; TYPE_5__ u; } ;
typedef  int /*<<< orphan*/  debug_type ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_6__ {int /*<<< orphan*/  right; } ;
struct TYPE_7__ {TYPE_1__ s_binary; } ;
struct TYPE_8__ {scalar_t__ type; TYPE_2__ u; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_FUNCTION_TYPE ; 
 scalar_t__ DEMANGLE_COMPONENT_TYPED_NAME ; 
 int DMGL_ANSI ; 
 int DMGL_PARAMS ; 
 char* FUNC0 (char*) ; 
 struct demangle_component* FUNC1 (char const*,int,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (void*) ; 
 int /*<<< orphan*/  FUNC4 (char const*) ; 
 int /*<<< orphan*/ * FUNC5 (void*,struct stab_handle*,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static debug_type *
FUNC6 (void *dhandle, struct stab_handle *info,
			   const char *physname, bfd_boolean *pvarargs)
{
  struct demangle_component *dc;
  void *mem;
  debug_type *pargs;

  dc = FUNC1 (physname, DMGL_PARAMS | DMGL_ANSI, &mem);
  if (dc == NULL)
    {
      FUNC4 (physname);
      return NULL;
    }

  /* We expect to see TYPED_NAME, and the right subtree describes the
     function type.  */
  if (dc->type != DEMANGLE_COMPONENT_TYPED_NAME
      || dc->u.s_binary.right->type != DEMANGLE_COMPONENT_FUNCTION_TYPE)
    {
      FUNC2 (stderr, "%s", FUNC0("Demangled name is not a function\n"));
      FUNC3 (mem);
      return NULL;
    }

  pargs = FUNC5 (dhandle, info,
				    dc->u.s_binary.right->u.s_binary.right,
				    pvarargs);

  FUNC3 (mem);

  return pargs;
}