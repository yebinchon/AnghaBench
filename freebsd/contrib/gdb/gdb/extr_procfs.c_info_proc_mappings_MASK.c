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
typedef  int /*<<< orphan*/  procinfo ;

/* Variables and functions */
 int TARGET_PTR_BIT ; 
 int /*<<< orphan*/  info_mappings_callback ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,...) ; 

__attribute__((used)) static void
FUNC2 (procinfo *pi, int summary)
{
  char *header_fmt_string;

  if (TARGET_PTR_BIT == 32)
    header_fmt_string = "\t%10s %10s %10s %10s %7s\n";
  else
    header_fmt_string = "  %18s %18s %10s %10s %7s\n";

  if (summary)
    return;	/* No output for summary mode. */

  FUNC1 ("Mapped address spaces:\n\n");
  FUNC1 (header_fmt_string,
		   "Start Addr",
		   "  End Addr",
		   "      Size",
		   "    Offset",
		   "Flags");

  FUNC0 (pi, NULL, NULL, info_mappings_callback);
  FUNC1 ("\n");
}