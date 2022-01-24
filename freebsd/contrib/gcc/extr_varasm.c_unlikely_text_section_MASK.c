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
typedef  int /*<<< orphan*/  section ;
struct TYPE_2__ {int /*<<< orphan*/  unlikely_text_section_name; } ;

/* Variables and functions */
 int /*<<< orphan*/  UNLIKELY_EXECUTED_TEXT_SECTION_NAME ; 
 TYPE_1__* cfun ; 
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 () ; 

section *
FUNC2 (void)
{
  if (cfun)
    {
      if (!cfun->unlikely_text_section_name)
	FUNC1 ();

      return FUNC0 (NULL, cfun->unlikely_text_section_name, 0);
    }
  else
    return FUNC0 (NULL, UNLIKELY_EXECUTED_TEXT_SECTION_NAME, 0);
}