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
struct ui_file {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 unsigned int FUNC2 (unsigned int,char*) ; 

__attribute__((used)) static void
FUNC3 (unsigned int status, struct ui_file *file)
{
  FUNC0 (file, "Status Word:         %s",
		   FUNC2 (status, "04"));
  FUNC1 ("  ", file);
  FUNC0 (file, " %s", (status & 0x0001) ? "IE" : "  ");
  FUNC0 (file, " %s", (status & 0x0002) ? "DE" : "  ");
  FUNC0 (file, " %s", (status & 0x0004) ? "ZE" : "  ");
  FUNC0 (file, " %s", (status & 0x0008) ? "OE" : "  ");
  FUNC0 (file, " %s", (status & 0x0010) ? "UE" : "  ");
  FUNC0 (file, " %s", (status & 0x0020) ? "PE" : "  ");
  FUNC1 ("  ", file);
  FUNC0 (file, " %s", (status & 0x0080) ? "ES" : "  ");
  FUNC1 ("  ", file);
  FUNC0 (file, " %s", (status & 0x0040) ? "SF" : "  ");
  FUNC1 ("  ", file);
  FUNC0 (file, " %s", (status & 0x0100) ? "C0" : "  ");
  FUNC0 (file, " %s", (status & 0x0200) ? "C1" : "  ");
  FUNC0 (file, " %s", (status & 0x0400) ? "C2" : "  ");
  FUNC0 (file, " %s", (status & 0x4000) ? "C3" : "  ");

  FUNC1 ("\n", file);

  FUNC0 (file,
		    "                       TOP: %d\n", ((status >> 11) & 7));
}