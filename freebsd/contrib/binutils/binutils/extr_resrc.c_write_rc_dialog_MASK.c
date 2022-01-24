#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_8__ ;
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef  TYPE_4__ rc_dialog_control ;
struct TYPE_9__ {scalar_t__ length; } ;
struct TYPE_10__ {scalar_t__ id; TYPE_1__ n; } ;
struct TYPE_14__ {TYPE_2__ u; scalar_t__ named; } ;
struct TYPE_13__ {int style; scalar_t__ exstyle; TYPE_4__* controls; TYPE_3__* ex; int /*<<< orphan*/ * font; scalar_t__ pointsize; TYPE_8__ menu; int /*<<< orphan*/ * caption; TYPE_8__ class; } ;
typedef  TYPE_5__ rc_dialog ;
struct TYPE_11__ {scalar_t__ weight; scalar_t__ italic; int charset; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,TYPE_8__,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,TYPE_4__ const*) ; 

__attribute__((used)) static void
FUNC4 (FILE *e, const rc_dialog *dialog)
{
  const rc_dialog_control *control;

  FUNC0 (e, "STYLE 0x%x\n", dialog->style);

  if (dialog->exstyle != 0)
    FUNC0 (e, "EXSTYLE 0x%x\n", (unsigned int) dialog->exstyle);

  if ((dialog->class.named && dialog->class.u.n.length > 0)
      || dialog->class.u.id != 0)
    {
      FUNC0 (e, "CLASS ");
      FUNC1 (e, dialog->class, 1);
      FUNC0 (e, "\n");
    }

  if (dialog->caption != NULL)
    {
      FUNC0 (e, "CAPTION ");
      FUNC2 (e, dialog->caption, -1);
      FUNC0 (e, "\n");
    }

  if ((dialog->menu.named && dialog->menu.u.n.length > 0)
      || dialog->menu.u.id != 0)
    {
      FUNC0 (e, "MENU ");
      FUNC1 (e, dialog->menu, 0);
      FUNC0 (e, "\n");
    }

  if (dialog->font != NULL)
    {
      FUNC0 (e, "FONT %d, ", (int) dialog->pointsize);
      FUNC2 (e, dialog->font, -1);
      if (dialog->ex != NULL
	  && (dialog->ex->weight != 0
	      || dialog->ex->italic != 0
	      || dialog->ex->charset != 1))
	FUNC0 (e, ", %d, %d, %d",
		 (int) dialog->ex->weight,
		 (int) dialog->ex->italic,
		 (int) dialog->ex->charset);
      FUNC0 (e, "\n");
    }

  FUNC0 (e, "BEGIN\n");

  for (control = dialog->controls; control != NULL; control = control->next)
    FUNC3 (e, control);

  FUNC0 (e, "END\n");
}