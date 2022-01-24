#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int kind; } ;
typedef  TYPE_1__ diagnostic_info ;
struct TYPE_6__ {int /*<<< orphan*/  abort_on_error; } ;
typedef  TYPE_2__ diagnostic_context ;

/* Variables and functions */
#define  DK_ANACHRONISM 135 
#define  DK_DEBUG 134 
#define  DK_ERROR 133 
#define  DK_FATAL 132 
#define  DK_ICE 131 
#define  DK_NOTE 130 
#define  DK_SORRY 129 
#define  DK_WARNING 128 
 int /*<<< orphan*/  FATAL_EXIT_CODE ; 
 int /*<<< orphan*/  ICE_EXIT_CODE ; 
 int /*<<< orphan*/  bug_report_url ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  flag_fatal_errors ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  stderr ; 

__attribute__((used)) static void
FUNC4 (diagnostic_context *context,
				diagnostic_info *diagnostic)
{
  switch (diagnostic->kind)
    {
    case DK_DEBUG:
    case DK_NOTE:
    case DK_ANACHRONISM:
    case DK_WARNING:
      break;

    case DK_ERROR:
    case DK_SORRY:
      if (context->abort_on_error)
	FUNC3 ();
      if (flag_fatal_errors)
	{
	  FUNC1 (stderr, "compilation terminated due to -Wfatal-errors.\n");
	  FUNC0 (FATAL_EXIT_CODE);
	}
      break;

    case DK_ICE:
      if (context->abort_on_error)
	FUNC3 ();

      FUNC1 (stderr, "Please submit a full bug report,\n"
	       "with preprocessed source if appropriate.\n"
	       "See %s for instructions.\n", bug_report_url);
      FUNC0 (ICE_EXIT_CODE);

    case DK_FATAL:
      if (context->abort_on_error)
	FUNC3 ();

      FUNC1 (stderr, "compilation terminated.\n");
      FUNC0 (FATAL_EXIT_CODE);

    default:
      FUNC2 ();
    }
}