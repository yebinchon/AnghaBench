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
 int TARGET_CHAR_BIT ; 
 int TARGET_FLOAT_BIT ; 
 int TARGET_INT_BIT ; 
 int /*<<< orphan*/  TYPE_CODE_BOOL ; 
 int /*<<< orphan*/  TYPE_CODE_CHAR ; 
 int /*<<< orphan*/  TYPE_CODE_FLT ; 
 int /*<<< orphan*/  TYPE_CODE_INT ; 
 int /*<<< orphan*/  TYPE_FLAG_UNSIGNED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 void* builtin_type_m2_bool ; 
 void* builtin_type_m2_card ; 
 void* builtin_type_m2_char ; 
 void* builtin_type_m2_int ; 
 void* builtin_type_m2_real ; 
 void* FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ ,char*,struct objfile*) ; 
 int /*<<< orphan*/  m2_language_defn ; 

void
FUNC2 (void)
{
  /* Modula-2 "pervasive" types.  NOTE:  these can be redefined!!! */
  builtin_type_m2_int =
    FUNC1 (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
	       0,
	       "INTEGER", (struct objfile *) NULL);
  builtin_type_m2_card =
    FUNC1 (TYPE_CODE_INT, TARGET_INT_BIT / TARGET_CHAR_BIT,
	       TYPE_FLAG_UNSIGNED,
	       "CARDINAL", (struct objfile *) NULL);
  builtin_type_m2_real =
    FUNC1 (TYPE_CODE_FLT, TARGET_FLOAT_BIT / TARGET_CHAR_BIT,
	       0,
	       "REAL", (struct objfile *) NULL);
  builtin_type_m2_char =
    FUNC1 (TYPE_CODE_CHAR, TARGET_CHAR_BIT / TARGET_CHAR_BIT,
	       TYPE_FLAG_UNSIGNED,
	       "CHAR", (struct objfile *) NULL);
  builtin_type_m2_bool =
    FUNC1 (TYPE_CODE_BOOL, TARGET_INT_BIT / TARGET_CHAR_BIT,
	       TYPE_FLAG_UNSIGNED,
	       "BOOLEAN", (struct objfile *) NULL);

  FUNC0 (&m2_language_defn);
}