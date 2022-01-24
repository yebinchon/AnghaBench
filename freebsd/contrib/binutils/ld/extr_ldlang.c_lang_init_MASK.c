#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct lang_definedness_hash_entry {int dummy; } ;
struct TYPE_3__ {int /*<<< orphan*/  bfd_section; } ;

/* Variables and functions */
 int /*<<< orphan*/  BFD_ABS_SECTION_NAME ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 TYPE_1__* abs_output_section ; 
 int /*<<< orphan*/  bfd_abs_section_ptr ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  file_chain ; 
 int /*<<< orphan*/  first_file ; 
 int /*<<< orphan*/  input_file_chain ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lang_definedness_newfunc ; 
 int /*<<< orphan*/  lang_definedness_table ; 
 int /*<<< orphan*/  lang_input_file_is_marker_enum ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  lang_output_section_statement ; 
 TYPE_1__* FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC7 () ; 
 int /*<<< orphan*/  stat_obstack ; 
 int /*<<< orphan*/ * stat_ptr ; 
 int /*<<< orphan*/  statement_list ; 

void
FUNC8 (void)
{
  FUNC6 (&stat_obstack, 1000);

  stat_ptr = &statement_list;

  FUNC7 ();

  FUNC4 (stat_ptr);

  FUNC4 (&input_file_chain);
  FUNC4 (&lang_output_section_statement);
  FUNC4 (&file_chain);
  first_file = FUNC3 (NULL, lang_input_file_is_marker_enum,
				    NULL);
  abs_output_section =
    FUNC5 (BFD_ABS_SECTION_NAME);

  abs_output_section->bfd_section = bfd_abs_section_ptr;

  /* The value "3" is ad-hoc, somewhat related to the expected number of
     DEFINED expressions in a linker script.  For most default linker
     scripts, there are none.  Why a hash table then?  Well, it's somewhat
     simpler to re-use working machinery than using a linked list in terms
     of code-complexity here in ld, besides the initialization which just
     looks like other code here.  */
  if (!FUNC1 (&lang_definedness_table,
			      lang_definedness_newfunc,
			      sizeof (struct lang_definedness_hash_entry),
			      3))
    FUNC2 (FUNC0("%P%F: can not create hash table: %E\n"));
}