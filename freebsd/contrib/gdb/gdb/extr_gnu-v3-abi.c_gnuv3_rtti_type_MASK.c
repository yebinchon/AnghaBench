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
struct minimal_symbol {int dummy; } ;
typedef  int LONGEST ;
typedef  scalar_t__ CORE_ADDR ;

/* Variables and functions */
 char* FUNC0 (struct minimal_symbol*) ; 
 scalar_t__ FUNC1 (struct type*) ; 
 scalar_t__ TYPE_CODE_CLASS ; 
 scalar_t__ FUNC2 (struct type*) ; 
 char const* FUNC3 (struct type*) ; 
 int /*<<< orphan*/  FUNC4 (struct type*) ; 
 int FUNC5 (struct type*) ; 
 int FUNC6 (struct value*) ; 
 int /*<<< orphan*/  FUNC7 (struct value*) ; 
 int FUNC8 (struct value*) ; 
 struct type* FUNC9 (struct value*) ; 
 int FUNC10 (struct value*) ; 
 int /*<<< orphan*/  FUNC11 (struct value*) ; 
 struct type* FUNC12 (int /*<<< orphan*/ ) ; 
 struct type* FUNC13 (char const*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  current_gdbarch ; 
 int /*<<< orphan*/  FUNC14 (struct type*) ; 
 struct type* FUNC15 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 struct minimal_symbol* FUNC16 (int) ; 
 scalar_t__ FUNC17 (char const*,char*,int) ; 
 scalar_t__ FUNC18 (int /*<<< orphan*/ ) ; 
 int FUNC19 (int /*<<< orphan*/ ) ; 
 struct value* FUNC20 (struct type*,scalar_t__,int /*<<< orphan*/ ) ; 
 struct value* FUNC21 (struct type*,struct value*) ; 
 int /*<<< orphan*/  FUNC22 (struct value*,int) ; 
 scalar_t__ FUNC23 () ; 
 int vtable_field_offset_to_top ; 
 int /*<<< orphan*/  vtable_type_gdbarch_data ; 
 int /*<<< orphan*/  FUNC24 (char*,char const*) ; 

__attribute__((used)) static struct type *
FUNC25 (struct value *value,
                 int *full_p, int *top_p, int *using_enc_p)
{
  struct type *vtable_type = FUNC15 (current_gdbarch,
					   vtable_type_gdbarch_data);
  struct type *value_type = FUNC12 (FUNC11 (value));
  CORE_ADDR vtable_address;
  struct value *vtable;
  struct minimal_symbol *vtable_symbol;
  const char *vtable_symbol_name;
  const char *class_name;
  struct type *run_time_type;
  struct type *base_type;
  LONGEST offset_to_top;

  /* We only have RTTI for class objects.  */
  if (FUNC1 (value_type) != TYPE_CODE_CLASS)
    return NULL;

  /* If we can't find the virtual table pointer for value_type, we
     can't find the RTTI.  */
  FUNC14 (value_type);
  if (FUNC5 (value_type) == -1)
    return NULL;

  if (using_enc_p)
    *using_enc_p = 0;

  /* Fetch VALUE's virtual table pointer, and tweak it to point at
     an instance of our imaginary gdb_gnu_v3_abi_vtable structure.  */
  base_type = FUNC12 (FUNC4 (value_type));
  if (value_type != base_type)
    {
      value = FUNC21 (base_type, value);
      if (using_enc_p)
	*using_enc_p = 1;
    }
  vtable_address
    = FUNC18 (FUNC22 (value, FUNC5 (value_type)));
  vtable = FUNC20 (vtable_type,
                          vtable_address - FUNC23 (),
                          FUNC7 (value));
  
  /* Find the linker symbol for this vtable.  */
  vtable_symbol
    = FUNC16 (FUNC6 (vtable)
                                   + FUNC10 (vtable)
                                   + FUNC8 (vtable));
  if (! vtable_symbol)
    return NULL;
  
  /* The symbol's demangled name should be something like "vtable for
     CLASS", where CLASS is the name of the run-time type of VALUE.
     If we didn't like this approach, we could instead look in the
     type_info object itself to get the class name.  But this way
     should work just as well, and doesn't read target memory.  */
  vtable_symbol_name = FUNC0 (vtable_symbol);
  if (vtable_symbol_name == NULL
      || FUNC17 (vtable_symbol_name, "vtable for ", 11))
    {
      FUNC24 ("can't find linker symbol for virtual table for `%s' value",
	       FUNC3 (value_type));
      if (vtable_symbol_name)
	FUNC24 ("  found `%s' instead", vtable_symbol_name);
      return NULL;
    }
  class_name = vtable_symbol_name + 11;

  /* Try to look up the class name as a type name.  */
  /* FIXME: chastain/2003-11-26: block=NULL is bogus.  See pr gdb/1465. */
  run_time_type = FUNC13 (class_name, NULL);
  if (run_time_type == NULL)
    return NULL;

  /* Get the offset from VALUE to the top of the complete object.
     NOTE: this is the reverse of the meaning of *TOP_P.  */
  offset_to_top
    = FUNC19 (FUNC22 (vtable, vtable_field_offset_to_top));

  if (full_p)
    *full_p = (- offset_to_top == FUNC8 (value)
               && (FUNC2 (FUNC9 (value))
                   >= FUNC2 (run_time_type)));
  if (top_p)
    *top_p = - offset_to_top;

  return run_time_type;
}