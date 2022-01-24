#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct demangle_component {int dummy; } ;
struct d_info {TYPE_4__* last_name; int /*<<< orphan*/  expansion; } ;
typedef  enum gnu_v3_dtor_kinds { ____Placeholder_gnu_v3_dtor_kinds } gnu_v3_dtor_kinds ;
typedef  enum gnu_v3_ctor_kinds { ____Placeholder_gnu_v3_ctor_kinds } gnu_v3_ctor_kinds ;
struct TYPE_7__ {scalar_t__ len; } ;
struct TYPE_6__ {scalar_t__ len; } ;
struct TYPE_8__ {TYPE_2__ s_string; TYPE_1__ s_name; } ;
struct TYPE_9__ {scalar_t__ type; TYPE_3__ u; } ;

/* Variables and functions */
 scalar_t__ DEMANGLE_COMPONENT_NAME ; 
 scalar_t__ DEMANGLE_COMPONENT_SUB_STD ; 
 int /*<<< orphan*/  FUNC0 (struct d_info*,int) ; 
 struct demangle_component* FUNC1 (struct d_info*,int,TYPE_4__*) ; 
 struct demangle_component* FUNC2 (struct d_info*,int,TYPE_4__*) ; 
 int FUNC3 (struct d_info*) ; 
 int /*<<< orphan*/  FUNC4 (struct d_info*) ; 
 int gnu_v3_base_object_ctor ; 
 int gnu_v3_base_object_dtor ; 
 int gnu_v3_complete_object_allocating_ctor ; 
 int gnu_v3_complete_object_ctor ; 
 int gnu_v3_complete_object_dtor ; 
 int gnu_v3_deleting_dtor ; 

__attribute__((used)) static struct demangle_component *
FUNC5 (struct d_info *di)
{
  if (di->last_name != NULL)
    {
      if (di->last_name->type == DEMANGLE_COMPONENT_NAME)
	di->expansion += di->last_name->u.s_name.len;
      else if (di->last_name->type == DEMANGLE_COMPONENT_SUB_STD)
	di->expansion += di->last_name->u.s_string.len;
    }
  switch (FUNC3 (di))
    {
    case 'C':
      {
	enum gnu_v3_ctor_kinds kind;

	switch (FUNC4 (di))
	  {
	  case '1':
	    kind = gnu_v3_complete_object_ctor;
	    break;
	  case '2':
	    kind = gnu_v3_base_object_ctor;
	    break;
	  case '3':
	    kind = gnu_v3_complete_object_allocating_ctor;
	    break;
	  default:
	    return NULL;
	  }
	FUNC0 (di, 2);
	return FUNC1 (di, kind, di->last_name);
      }

    case 'D':
      {
	enum gnu_v3_dtor_kinds kind;

	switch (FUNC4 (di))
	  {
	  case '0':
	    kind = gnu_v3_deleting_dtor;
	    break;
	  case '1':
	    kind = gnu_v3_complete_object_dtor;
	    break;
	  case '2':
	    kind = gnu_v3_base_object_dtor;
	    break;
	  default:
	    return NULL;
	  }
	FUNC0 (di, 2);
	return FUNC2 (di, kind, di->last_name);
      }

    default:
      return NULL;
    }
}