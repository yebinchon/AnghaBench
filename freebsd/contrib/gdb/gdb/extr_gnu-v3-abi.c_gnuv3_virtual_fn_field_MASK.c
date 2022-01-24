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
struct value {int dummy; } ;
struct type {int dummy; } ;
struct fn_field {int dummy; } ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 scalar_t__ FUNC0 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 struct type* FUNC1 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC2 (struct fn_field*,int) ; 
 int /*<<< orphan*/  FUNC3 (struct fn_field*,int) ; 
 char* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 int /*<<< orphan*/  FUNC8 (struct value*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC10 (char*,...) ; 
 int /*<<< orphan*/  FUNC11 (struct type*) ; 
 struct type* FUNC12 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct type* FUNC13 (int /*<<< orphan*/ ) ; 
 struct value* FUNC14 (struct value*) ; 
 scalar_t__ FUNC15 (int /*<<< orphan*/ ) ; 
 struct value* FUNC16 (struct type*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct value* FUNC17 (struct type*,struct value*) ; 
 int /*<<< orphan*/  FUNC18 (struct value*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct value* FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC21 () ; 
 scalar_t__ vtable_field_virtual_functions ; 
 int /*<<< orphan*/  vtable_type_gdbarch_data ; 

__attribute__((used)) static struct value *
FUNC22 (struct value **value_p,
                        struct fn_field *f, int j,
			struct type *type, int offset)
{
  struct type *vtable_type = FUNC12 (current_gdbarch,
					   vtable_type_gdbarch_data);
  struct value *value = *value_p;
  struct type *value_type = FUNC9 (FUNC8 (value));
  struct type *vfn_base;
  CORE_ADDR vtable_address;
  struct value *vtable;
  struct value *vfn;

  /* Some simple sanity checks.  */
  if (FUNC0 (value_type) != TYPE_CODE_CLASS)
    FUNC10 ("Only classes can have virtual functions.");

  /* Find the base class that defines this virtual function.  */
  vfn_base = FUNC1 (f, j);
  if (! vfn_base)
    /* In programs compiled with G++ version 1, the debug info doesn't
       say which base class defined the virtual function.  We'll guess
       it's the same base class that has our vtable; this is wrong for
       multiple inheritance, but it's better than nothing.  */
    vfn_base = FUNC5 (type);

  /* This type may have been defined before its virtual function table
     was.  If so, fill in the virtual function table entry for the
     type now.  */
  if (FUNC6 (vfn_base) < 0)
    FUNC11 (vfn_base);
  if (FUNC6 (vfn_base) < 0)
    FUNC10 ("Could not find virtual table pointer for class \"%s\".",
	   FUNC4 (vfn_base) ? FUNC4 (vfn_base) : "<unknown>");

  /* Now that we know which base class is defining our virtual
     function, cast our value to that baseclass.  This takes care of
     any necessary `this' adjustments.  */
  if (vfn_base != value_type)
    value = FUNC17 (vfn_base, value);

  /* Now value is an object of the appropriate base type.  Fetch its
     virtual table.  */
  /* It might be possible to do this cast at the same time as the above.
     Does multiple inheritance affect this?
     Can this even trigger, or is TYPE_VPTR_BASETYPE idempotent?
  */
  if (FUNC5 (vfn_base) != vfn_base)
    value = FUNC17 (FUNC5 (vfn_base), value);
  vtable_address
    = FUNC15 (FUNC18 (value, FUNC6 (vfn_base)));

  vtable = FUNC16 (vtable_type,
                          vtable_address - FUNC21 (),
                          FUNC7 (value));

  /* Fetch the appropriate function pointer from the vtable.  */
  vfn = FUNC20 (FUNC18 (vtable, vtable_field_virtual_functions),
                         FUNC19 (builtin_type_int,
                                             FUNC3 (f, j)));

  /* Cast the function pointer to the appropriate type.  */
  vfn = FUNC17 (FUNC13 (FUNC2 (f, j)),
                    vfn);

  /* Is (type)value always numerically the same as (vfn_base)value?
     If so we can spare this cast and use one of the ones above.  */
  *value_p = FUNC14 (FUNC17 (type, *value_p));

  return vfn;
}