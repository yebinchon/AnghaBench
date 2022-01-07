
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct control_info {char* name; scalar_t__ class; unsigned long style; } ;
struct TYPE_5__ {scalar_t__ id; } ;
struct TYPE_7__ {scalar_t__ named; TYPE_1__ u; } ;
struct TYPE_6__ {int style; scalar_t__ exstyle; scalar_t__ width; scalar_t__ height; scalar_t__ help; int * data; scalar_t__ y; scalar_t__ x; TYPE_4__ class; scalar_t__ id; TYPE_4__ text; } ;
typedef TYPE_2__ rc_dialog_control ;
typedef int FILE ;


 int SS_ICON ;
 struct control_info* control_info ;
 int fprintf (int *,char*,...) ;
 int res_id_print (int *,TYPE_4__,int) ;
 int write_rc_rcdata (int *,int *,int) ;

__attribute__((used)) static void
write_rc_dialog_control (FILE *e, const rc_dialog_control *control)
{
  const struct control_info *ci;

  fprintf (e, "  ");

  if (control->class.named)
    ci = ((void*)0);
  else
    {
      for (ci = control_info; ci->name != ((void*)0); ++ci)
 if (ci->class == control->class.u.id
     && (ci->style == (unsigned long) -1
  || ci->style == (control->style & 0xff)))
   break;
    }
  if (ci == ((void*)0))
    fprintf (e, "CONTROL");
  else if (ci->name != ((void*)0))
    fprintf (e, "%s", ci->name);
  else
    {
    fprintf (e, "CONTROL");
      ci = ((void*)0);
    }

  if (control->text.named || control->text.u.id != 0)
    {
      fprintf (e, " ");
      res_id_print (e, control->text, 1);
      fprintf (e, ",");
    }

  fprintf (e, " %d, ", (int) control->id);

  if (ci == ((void*)0))
    {
      if (control->class.named)
 fprintf (e, "\"");
      res_id_print (e, control->class, 0);
      if (control->class.named)
 fprintf (e, "\"");
      fprintf (e, ", 0x%x, ", (unsigned int) control->style);
    }

  fprintf (e, "%d, %d", (int) control->x, (int) control->y);

  if (control->style != SS_ICON
      || control->exstyle != 0
      || control->width != 0
      || control->height != 0
      || control->help != 0)
    {
      fprintf (e, ", %d, %d", (int) control->width, (int) control->height);




      if (ci != ((void*)0))
 fprintf (e, ", 0x%x", (unsigned int) control->style);

      if (control->exstyle != 0 || control->help != 0)
 fprintf (e, ", 0x%x, %u", (unsigned int) control->exstyle,
   (unsigned int) control->help);
    }

  fprintf (e, "\n");

  if (control->data != ((void*)0))
    write_rc_rcdata (e, control->data, 2);
}
