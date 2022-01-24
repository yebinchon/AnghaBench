#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {char* file; scalar_t__ line; } ;
typedef  TYPE_1__ location_t ;

/* Variables and functions */
 TYPE_1__ BUILTINS_LOCATION ; 
 int /*<<< orphan*/  TYPE_DECL ; 
 int /*<<< orphan*/  boolean_type_node ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  c_make_fname_decl ; 
 int /*<<< orphan*/  FUNC3 () ; 
 scalar_t__ current_function_decl ; 
 int /*<<< orphan*/  current_scope ; 
 int /*<<< orphan*/  external_scope ; 
 int /*<<< orphan*/  flag_signed_char ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (char*) ; 
 TYPE_1__ input_location ; 
 int /*<<< orphan*/  integer_one_node ; 
 int /*<<< orphan*/  integer_type_node ; 
 int /*<<< orphan*/  integer_zero_node ; 
 int /*<<< orphan*/  make_fname_decl ; 
 int /*<<< orphan*/  parser_obstack ; 
 int pedantic_lvalues ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 () ; 
 int /*<<< orphan*/  truthvalue_false_node ; 
 int /*<<< orphan*/  truthvalue_true_node ; 
 int /*<<< orphan*/  truthvalue_type_node ; 

void
FUNC9 (void)
{
  location_t save_loc = input_location;

  /* Initialize reserved words for parser.  */
  FUNC3 ();

  current_function_decl = 0;

  FUNC4 (&parser_obstack);

  /* Make the externals scope.  */
  FUNC6 ();
  external_scope = current_scope;

  /* Declarations from c_common_nodes_and_builtins must not be associated
     with this input file, lest we get differences between using and not
     using preprocessed headers.  */
#ifdef USE_MAPPED_LOCATION
  input_location = BUILTINS_LOCATION;
#else
  input_location.file = "<built-in>";
  input_location.line = 0;
#endif

  FUNC0 (flag_signed_char, false);

  FUNC2 ();

  /* In C, comparisons and TRUTH_* expressions have type int.  */
  truthvalue_type_node = integer_type_node;
  truthvalue_true_node = integer_one_node;
  truthvalue_false_node = integer_zero_node;

  /* Even in C99, which has a real boolean type.  */
  FUNC7 (FUNC1 (TYPE_DECL, FUNC5 ("_Bool"),
			boolean_type_node));

  input_location = save_loc;

  pedantic_lvalues = true;

  make_fname_decl = c_make_fname_decl;
  FUNC8 ();
}