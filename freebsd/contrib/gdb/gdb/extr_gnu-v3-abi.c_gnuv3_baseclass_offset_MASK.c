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
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct type*,int) ; 
 int FUNC1 (struct type*,int) ; 
 scalar_t__ FUNC2 (struct type*,scalar_t__) ; 
 long FUNC3 (struct type*) ; 
 char* FUNC4 (struct type*) ; 
 struct type* FUNC5 (struct type*) ; 
 scalar_t__ FUNC6 (struct type*) ; 
 int /*<<< orphan*/  builtin_type_int ; 
 struct type* builtin_type_void_data_ptr ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 
 int /*<<< orphan*/  FUNC8 (struct type*) ; 
 struct type* FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC10 (struct value*) ; 
 long FUNC11 (int /*<<< orphan*/ ) ; 
 struct value* FUNC12 (struct type*,scalar_t__,int /*<<< orphan*/ *) ; 
 struct value* FUNC13 (struct value*,int /*<<< orphan*/ ) ; 
 struct value* FUNC14 (int /*<<< orphan*/ ,long) ; 
 int /*<<< orphan*/  FUNC15 (struct value*,struct value*) ; 
 long FUNC16 () ; 
 int /*<<< orphan*/  vtable_field_vcall_and_vbase_offsets ; 
 int /*<<< orphan*/  vtable_type_gdbarch_data ; 

__attribute__((used)) static int
FUNC17 (struct type *type, int index, char *valaddr,
			CORE_ADDR address)
{
  struct type *vtable_type = FUNC9 (current_gdbarch,
					   vtable_type_gdbarch_data);
  struct value *vtable;
  struct type *vbasetype;
  struct value *offset_val, *vbase_array;
  CORE_ADDR vtable_address;
  long int cur_base_offset, base_offset;

  /* If it isn't a virtual base, this is easy.  The offset is in the
     type definition.  */
  if (!FUNC0 (type, index))
    return FUNC1 (type, index) / 8;

  /* To access a virtual base, we need to use the vbase offset stored in
     our vtable.  Recent GCC versions provide this information.  If it isn't
     available, we could get what we needed from RTTI, or from drawing the
     complete inheritance graph based on the debug info.  Neither is
     worthwhile.  */
  cur_base_offset = FUNC1 (type, index) / 8;
  if (cur_base_offset >= - FUNC16 ())
    FUNC7 ("Expected a negative vbase offset (old compiler?)");

  cur_base_offset = cur_base_offset + FUNC16 ();
  if ((- cur_base_offset) % FUNC3 (builtin_type_void_data_ptr) != 0)
    FUNC7 ("Misaligned vbase offset.");
  cur_base_offset = cur_base_offset
    / ((int) FUNC3 (builtin_type_void_data_ptr));

  /* We're now looking for the cur_base_offset'th entry (negative index)
     in the vcall_and_vbase_offsets array.  We used to cast the object to
     its TYPE_VPTR_BASETYPE, and reference the vtable as TYPE_VPTR_FIELDNO;
     however, that cast can not be done without calling baseclass_offset again
     if the TYPE_VPTR_BASETYPE is a virtual base class, as described in the
     v3 C++ ABI Section 2.4.I.2.b.  Fortunately the ABI guarantees that the
     vtable pointer will be located at the beginning of the object, so we can
     bypass the casting.  Verify that the TYPE_VPTR_FIELDNO is in fact at the
     start of whichever baseclass it resides in, as a sanity measure - iff
     we have debugging information for that baseclass.  */

  vbasetype = FUNC5 (type);
  if (FUNC6 (vbasetype) < 0)
    FUNC8 (vbasetype);

  if (FUNC6 (vbasetype) >= 0
      && FUNC2 (vbasetype, FUNC6 (vbasetype)) != 0)
    FUNC7 ("Illegal vptr offset in class %s",
	   FUNC4 (vbasetype) ? FUNC4 (vbasetype) : "<unknown>");

  vtable_address = FUNC10 (FUNC12 (builtin_type_void_data_ptr,
						    address, NULL));
  vtable = FUNC12 (vtable_type,
                          vtable_address - FUNC16 (),
                          NULL);
  offset_val = FUNC14(builtin_type_int, cur_base_offset);
  vbase_array = FUNC13 (vtable, vtable_field_vcall_and_vbase_offsets);
  base_offset = FUNC11 (FUNC15 (vbase_array, offset_val));
  return base_offset;
}