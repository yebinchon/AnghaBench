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
typedef  int /*<<< orphan*/  va_list ;
struct ui_out {int dummy; } ;
typedef  enum ui_align { ____Placeholder_ui_align } ui_align ;
struct TYPE_3__ {int /*<<< orphan*/  stream; scalar_t__ suppress_output; } ;
typedef  TYPE_1__ cli_out_data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int ui_noalign ; 
 TYPE_1__* FUNC1 (struct ui_out*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char const*,int /*<<< orphan*/ ) ; 

void
FUNC3 (struct ui_out *uiout, int fldno,
	       int width, enum ui_align align,
	       const char *fldname,
	       const char *format,
	       va_list args)
{
  cli_out_data *data = FUNC1 (uiout);
  if (data->suppress_output)
    return;

  FUNC2 (data->stream, format, args);

  if (align != ui_noalign)
    FUNC0 ();
}