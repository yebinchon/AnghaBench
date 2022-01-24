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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  Pmode ; 
 scalar_t__ TARGET_ARCH64 ; 
 int /*<<< orphan*/  VOIDmode ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int flag_pic ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,void*,void*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,void*,void*) ; 
 void* FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 void* global_offset_table ; 
 int /*<<< orphan*/  pic_helper_emitted_p ; 
 void* pic_helper_symbol ; 
 char* pic_helper_symbol_name ; 
 int /*<<< orphan*/  pic_offset_table_rtx ; 

__attribute__((used)) static void
FUNC7 (bool delay_pic_helper)
{
  int orig_flag_pic = flag_pic;

  /* If we haven't initialized the special PIC symbols, do so now.  */
  if (!pic_helper_symbol_name[0])
    {
      FUNC0 (pic_helper_symbol_name, "LADDPC", 0);
      pic_helper_symbol = FUNC5 (Pmode, pic_helper_symbol_name);
      global_offset_table = FUNC5 (Pmode, "_GLOBAL_OFFSET_TABLE_");
    }

  /* If we haven't emitted the special PIC helper function, do so now unless
     we are requested to delay it.  */
  if (!delay_pic_helper && !pic_helper_emitted_p)
    FUNC2 ();

  flag_pic = 0;
  if (TARGET_ARCH64)
    FUNC1 (FUNC3 (pic_offset_table_rtx, global_offset_table,
				     pic_helper_symbol));
  else
    FUNC1 (FUNC4 (pic_offset_table_rtx, global_offset_table,
				     pic_helper_symbol));
  flag_pic = orig_flag_pic;

  /* Need to emit this whether or not we obey regdecls,
     since setjmp/longjmp can cause life info to screw up.
     ??? In the case where we don't obey regdecls, this is not sufficient
     since we may not fall out the bottom.  */
  FUNC1 (FUNC6 (VOIDmode, pic_offset_table_rtx));
}