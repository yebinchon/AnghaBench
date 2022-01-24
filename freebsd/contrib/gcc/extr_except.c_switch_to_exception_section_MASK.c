#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ have_named_sections; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ,int) ; 
 int DW_EH_PE_absptr ; 
 int DW_EH_PE_aligned ; 
 scalar_t__ EH_TABLES_CAN_BE_READ_ONLY ; 
 int SECTION_WRITE ; 
 scalar_t__ data_section ; 
 scalar_t__ exception_section ; 
 scalar_t__ flag_pic ; 
 scalar_t__ FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 scalar_t__ readonly_data_section ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__) ; 
 TYPE_1__ targetm ; 

__attribute__((used)) static void
FUNC3 (void)
{
  if (exception_section == 0)
    {
      if (targetm.have_named_sections)
	{
	  int flags;

	  if (EH_TABLES_CAN_BE_READ_ONLY)
	    {
	      int tt_format =
		FUNC0 (/*code=*/0, /*global=*/1);
	      flags = ((! flag_pic
			|| ((tt_format & 0x70) != DW_EH_PE_absptr
			    && (tt_format & 0x70) != DW_EH_PE_aligned))
		       ? 0 : SECTION_WRITE);
	    }
	  else
	    flags = SECTION_WRITE;
	  exception_section = FUNC1 (".gcc_except_table", flags, NULL);
	}
      else
	exception_section = flag_pic ? data_section : readonly_data_section;
    }
  FUNC2 (exception_section);
}