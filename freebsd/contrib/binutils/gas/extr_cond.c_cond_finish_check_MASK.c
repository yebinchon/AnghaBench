#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
struct TYPE_4__ {int /*<<< orphan*/  line; int /*<<< orphan*/  file; } ;
struct TYPE_6__ {int macro_nest; TYPE_2__ else_file_line; scalar_t__ else_seen; TYPE_1__ if_file_line; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__* current_cframe ; 

void
FUNC3 (int nest)
{
  if (current_cframe != NULL && current_cframe->macro_nest >= nest)
    {
      if (nest >= 0)
	FUNC1 (FUNC0("end of macro inside conditional"));
      else
	FUNC1 (FUNC0("end of file inside conditional"));
      FUNC2 (current_cframe->if_file_line.file,
		    current_cframe->if_file_line.line,
		    FUNC0("here is the start of the unterminated conditional"));
      if (current_cframe->else_seen)
	FUNC2 (current_cframe->else_file_line.file,
		      current_cframe->else_file_line.line,
		      FUNC0("here is the \"else\" of the unterminated conditional"));
    }
}