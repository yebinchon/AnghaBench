#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct debug_write_fns {int /*<<< orphan*/  (* typed_constant ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* float_constant ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* int_constant ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* variable ) (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* tag ) (void*,int /*<<< orphan*/ ) ;int /*<<< orphan*/  (* typdef ) (void*,int /*<<< orphan*/ ) ;} ;
struct TYPE_6__ {TYPE_2__* typed_constant; int /*<<< orphan*/  float_constant; int /*<<< orphan*/  int_constant; int /*<<< orphan*/  function; TYPE_1__* variable; int /*<<< orphan*/  tag; int /*<<< orphan*/  type; } ;
struct debug_name {int kind; TYPE_3__ u; int /*<<< orphan*/  name; int /*<<< orphan*/  linkage; } ;
struct debug_handle {int dummy; } ;
typedef  int /*<<< orphan*/  bfd_boolean ;
struct TYPE_5__ {int /*<<< orphan*/  val; int /*<<< orphan*/  type; } ;
struct TYPE_4__ {int /*<<< orphan*/  val; int /*<<< orphan*/  kind; int /*<<< orphan*/  type; } ;

/* Variables and functions */
#define  DEBUG_OBJECT_FLOAT_CONSTANT 134 
#define  DEBUG_OBJECT_FUNCTION 133 
#define  DEBUG_OBJECT_INT_CONSTANT 132 
#define  DEBUG_OBJECT_TAG 131 
#define  DEBUG_OBJECT_TYPE 130 
#define  DEBUG_OBJECT_TYPED_CONSTANT 129 
#define  DEBUG_OBJECT_VARIABLE 128 
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (struct debug_handle*,struct debug_write_fns const*,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (struct debug_handle*,struct debug_write_fns const*,void*,int /*<<< orphan*/ ,struct debug_name*) ; 
 int /*<<< orphan*/  FUNC3 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static bfd_boolean
FUNC9 (struct debug_handle *info,
		  const struct debug_write_fns *fns, void *fhandle,
		  struct debug_name *n)
{
  switch (n->kind)
    {
    case DEBUG_OBJECT_TYPE:
      if (! FUNC2 (info, fns, fhandle, n->u.type, n)
	  || ! (*fns->typdef) (fhandle, n->name))
	return FALSE;
      return TRUE;
    case DEBUG_OBJECT_TAG:
      if (! FUNC2 (info, fns, fhandle, n->u.tag, n))
	return FALSE;
      return (*fns->tag) (fhandle, n->name);
    case DEBUG_OBJECT_VARIABLE:
      if (! FUNC2 (info, fns, fhandle, n->u.variable->type,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->variable) (fhandle, n->name, n->u.variable->kind,
			       n->u.variable->val);
    case DEBUG_OBJECT_FUNCTION:
      return FUNC1 (info, fns, fhandle, n->name,
				   n->linkage, n->u.function);
    case DEBUG_OBJECT_INT_CONSTANT:
      return (*fns->int_constant) (fhandle, n->name, n->u.int_constant);
    case DEBUG_OBJECT_FLOAT_CONSTANT:
      return (*fns->float_constant) (fhandle, n->name, n->u.float_constant);
    case DEBUG_OBJECT_TYPED_CONSTANT:
      if (! FUNC2 (info, fns, fhandle, n->u.typed_constant->type,
			      (struct debug_name *) NULL))
	return FALSE;
      return (*fns->typed_constant) (fhandle, n->name,
				     n->u.typed_constant->val);
    default:
      FUNC0 ();
      return FALSE;
    }
  /*NOTREACHED*/
}