
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ id; scalar_t__ state; scalar_t__ help; struct TYPE_3__* popup; int * text; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_menuitem ;
typedef int FILE ;


 int MENUITEM_CHECKED ;
 int MENUITEM_GRAYED ;
 int MENUITEM_HELP ;
 int MENUITEM_INACTIVE ;
 int MENUITEM_MENUBARBREAK ;
 int MENUITEM_MENUBREAK ;
 int fprintf (int *,char*,...) ;
 int indent (int *,int) ;
 int unicode_print_quoted (int *,int *,int) ;

__attribute__((used)) static void
write_rc_menuitems (FILE *e, const rc_menuitem *menuitems, int menuex,
      int ind)
{
  const rc_menuitem *mi;

  indent (e, ind);
  fprintf (e, "BEGIN\n");

  for (mi = menuitems; mi != ((void*)0); mi = mi->next)
    {
      indent (e, ind + 2);

      if (mi->popup == ((void*)0))
 fprintf (e, "MENUITEM");
      else
 fprintf (e, "POPUP");

      if (! menuex
   && mi->popup == ((void*)0)
   && mi->text == ((void*)0)
   && mi->type == 0
   && mi->id == 0)
 {
   fprintf (e, " SEPARATOR\n");
   continue;
 }

      if (mi->text == ((void*)0))
 fprintf (e, " \"\"");
      else
 {
   fprintf (e, " ");
   unicode_print_quoted (e, mi->text, -1);
 }

      if (! menuex)
 {
   if (mi->popup == ((void*)0))
     fprintf (e, ", %d", (int) mi->id);

   if ((mi->type & MENUITEM_CHECKED) != 0)
     fprintf (e, ", CHECKED");
   if ((mi->type & MENUITEM_GRAYED) != 0)
     fprintf (e, ", GRAYED");
   if ((mi->type & MENUITEM_HELP) != 0)
     fprintf (e, ", HELP");
   if ((mi->type & MENUITEM_INACTIVE) != 0)
     fprintf (e, ", INACTIVE");
   if ((mi->type & MENUITEM_MENUBARBREAK) != 0)
     fprintf (e, ", MENUBARBREAK");
   if ((mi->type & MENUITEM_MENUBREAK) != 0)
     fprintf (e, ", MENUBREAK");
 }
      else
 {
   if (mi->id != 0 || mi->type != 0 || mi->state != 0 || mi->help != 0)
     {
       fprintf (e, ", %d", (int) mi->id);
       if (mi->type != 0 || mi->state != 0 || mi->help != 0)
  {
    fprintf (e, ", %u", (unsigned int) mi->type);
    if (mi->state != 0 || mi->help != 0)
      {
        fprintf (e, ", %u", (unsigned int) mi->state);
        if (mi->help != 0)
   fprintf (e, ", %u", (unsigned int) mi->help);
      }
  }
     }
 }

      fprintf (e, "\n");

      if (mi->popup != ((void*)0))
 write_rc_menuitems (e, mi->popup, menuex, ind + 2);
    }

  indent (e, ind);
  fprintf (e, "END\n");
}
