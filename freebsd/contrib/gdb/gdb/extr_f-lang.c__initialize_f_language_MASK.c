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
struct objfile {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int TARGET_CHAR_BIT ; 
 int /*<<< orphan*/  TYPE_CODE_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  builtin_type_f_character ; 
 int /*<<< orphan*/  builtin_type_f_complex_s16 ; 
 int /*<<< orphan*/  builtin_type_f_complex_s32 ; 
 int /*<<< orphan*/  builtin_type_f_complex_s8 ; 
 int /*<<< orphan*/  builtin_type_f_integer ; 
 int /*<<< orphan*/  builtin_type_f_integer_s2 ; 
 int /*<<< orphan*/  builtin_type_f_logical ; 
 int /*<<< orphan*/  builtin_type_f_logical_s1 ; 
 int /*<<< orphan*/  builtin_type_f_logical_s2 ; 
 int /*<<< orphan*/  builtin_type_f_real ; 
 int /*<<< orphan*/  builtin_type_f_real_s16 ; 
 int /*<<< orphan*/  builtin_type_f_real_s8 ; 
 int /*<<< orphan*/  builtin_type_f_void ; 
 int /*<<< orphan*/  builtin_type_string ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  (*) ()) ; 
 int /*<<< orphan*/  f_language_defn ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct objfile*) ; 

void
FUNC5 (void)
{
  FUNC2 ();

  FUNC0 (builtin_type_f_character);
  FUNC0 (builtin_type_f_logical); 
  FUNC0 (builtin_type_f_logical_s1); 
  FUNC0 (builtin_type_f_logical_s2); 
  FUNC0 (builtin_type_f_integer); 
  FUNC0 (builtin_type_f_integer_s2); 
  FUNC0 (builtin_type_f_real); 
  FUNC0 (builtin_type_f_real_s8); 
  FUNC0 (builtin_type_f_real_s16); 
  FUNC0 (builtin_type_f_complex_s8); 
  FUNC0 (builtin_type_f_complex_s16); 
  FUNC0 (builtin_type_f_complex_s32); 
  FUNC0 (builtin_type_f_void); 
  FUNC0 (builtin_type_string); 
  FUNC3 (NULL, 0, build_fortran_types);

  builtin_type_string =
    FUNC4 (TYPE_CODE_STRING, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
	       0,
	       "character string", (struct objfile *) NULL);

  FUNC1 (&f_language_defn);
}