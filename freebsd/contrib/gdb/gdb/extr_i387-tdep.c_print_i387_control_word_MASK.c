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
 int /*<<< orphan*/  FUNC0 (struct ui_file*,char*,char*) ; 
 int /*<<< orphan*/  FUNC1 (char*,struct ui_file*) ; 
 char* FUNC2 (unsigned int,char*) ; 

__attribute__((used)) static void
FUNC3 (unsigned int control, struct ui_file *file)
{
  FUNC0 (file, "Control Word:        %s",
		   FUNC2 (control, "04"));
  FUNC1 ("  ", file);
  FUNC0 (file, " %s", (control & 0x0001) ? "IM" : "  ");
  FUNC0 (file, " %s", (control & 0x0002) ? "DM" : "  ");
  FUNC0 (file, " %s", (control & 0x0004) ? "ZM" : "  ");
  FUNC0 (file, " %s", (control & 0x0008) ? "OM" : "  ");
  FUNC0 (file, " %s", (control & 0x0010) ? "UM" : "  ");
  FUNC0 (file, " %s", (control & 0x0020) ? "PM" : "  ");

  FUNC1 ("\n", file);

  FUNC1 ("                       PC: ", file);
  switch ((control >> 8) & 3)
    {
    case 0:
      FUNC1 ("Single Precision (24-bits)\n", file);
      break;
    case 1:
      FUNC1 ("Reserved\n", file);
      break;
    case 2:
      FUNC1 ("Double Precision (53-bits)\n", file);
      break;
    case 3:
      FUNC1 ("Extended Precision (64-bits)\n", file);
      break;
    }
      
  FUNC1 ("                       RC: ", file);
  switch ((control >> 10) & 3)
    {
    case 0:
      FUNC1 ("Round to nearest\n", file);
      break;
    case 1:
      FUNC1 ("Round down\n", file);
      break;
    case 2:
      FUNC1 ("Round up\n", file);
      break;
    case 3:
      FUNC1 ("Round toward zero\n", file);
      break;
    }
}