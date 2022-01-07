
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_8__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_12__ {struct TYPE_12__* next; } ;
typedef TYPE_4__ rc_dialog_control ;
struct TYPE_9__ {scalar_t__ length; } ;
struct TYPE_10__ {scalar_t__ id; TYPE_1__ n; } ;
struct TYPE_14__ {TYPE_2__ u; scalar_t__ named; } ;
struct TYPE_13__ {int style; scalar_t__ exstyle; TYPE_4__* controls; TYPE_3__* ex; int * font; scalar_t__ pointsize; TYPE_8__ menu; int * caption; TYPE_8__ class; } ;
typedef TYPE_5__ rc_dialog ;
struct TYPE_11__ {scalar_t__ weight; scalar_t__ italic; int charset; } ;
typedef int FILE ;


 int fprintf (int *,char*,...) ;
 int res_id_print (int *,TYPE_8__,int) ;
 int unicode_print_quoted (int *,int *,int) ;
 int write_rc_dialog_control (int *,TYPE_4__ const*) ;

__attribute__((used)) static void
write_rc_dialog (FILE *e, const rc_dialog *dialog)
{
  const rc_dialog_control *control;

  fprintf (e, "STYLE 0x%x\n", dialog->style);

  if (dialog->exstyle != 0)
    fprintf (e, "EXSTYLE 0x%x\n", (unsigned int) dialog->exstyle);

  if ((dialog->class.named && dialog->class.u.n.length > 0)
      || dialog->class.u.id != 0)
    {
      fprintf (e, "CLASS ");
      res_id_print (e, dialog->class, 1);
      fprintf (e, "\n");
    }

  if (dialog->caption != ((void*)0))
    {
      fprintf (e, "CAPTION ");
      unicode_print_quoted (e, dialog->caption, -1);
      fprintf (e, "\n");
    }

  if ((dialog->menu.named && dialog->menu.u.n.length > 0)
      || dialog->menu.u.id != 0)
    {
      fprintf (e, "MENU ");
      res_id_print (e, dialog->menu, 0);
      fprintf (e, "\n");
    }

  if (dialog->font != ((void*)0))
    {
      fprintf (e, "FONT %d, ", (int) dialog->pointsize);
      unicode_print_quoted (e, dialog->font, -1);
      if (dialog->ex != ((void*)0)
   && (dialog->ex->weight != 0
       || dialog->ex->italic != 0
       || dialog->ex->charset != 1))
 fprintf (e, ", %d, %d, %d",
   (int) dialog->ex->weight,
   (int) dialog->ex->italic,
   (int) dialog->ex->charset);
      fprintf (e, "\n");
    }

  fprintf (e, "BEGIN\n");

  for (control = dialog->controls; control != ((void*)0); control = control->next)
    write_rc_dialog_control (e, control);

  fprintf (e, "END\n");
}
