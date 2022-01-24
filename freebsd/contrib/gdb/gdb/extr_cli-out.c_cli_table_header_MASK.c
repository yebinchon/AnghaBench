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
struct ui_out {int dummy; } ;
typedef  enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_3__ {scalar_t__ suppress_output; } ;
typedef  TYPE_1__ cli_out_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_out*,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,char const*) ; 
 TYPE_1__* FUNC1 (struct ui_out*) ; 

void
FUNC2 (struct ui_out *uiout, int width, enum ui_align alignment,
		  const char *col_name,
		  const char *colhdr)
{
  cli_out_data *data = FUNC1 (uiout);
  if (data->suppress_output)
    return;
  FUNC0 (uiout, 0, width, alignment, 0, colhdr);
}