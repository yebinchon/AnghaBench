
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int flags; scalar_t__ id; struct TYPE_3__* next; } ;
typedef TYPE_1__ rc_accelerator ;
typedef int FILE ;


 int ACC_ALT ;
 int ACC_CONTROL ;
 int ACC_SHIFT ;
 int ACC_VIRTKEY ;
 scalar_t__ ISPRINT (int) ;
 int fprintf (int *,char*,...) ;

__attribute__((used)) static void
write_rc_accelerators (FILE *e, const rc_accelerator *accelerators)
{
  const rc_accelerator *acc;

  fprintf (e, "BEGIN\n");
  for (acc = accelerators; acc != ((void*)0); acc = acc->next)
    {
      int printable;

      fprintf (e, "  ");

      if ((acc->key & 0x7f) == acc->key
   && ISPRINT (acc->key)
   && (acc->flags & ACC_VIRTKEY) == 0)
 {
   fprintf (e, "\"%c\"", (char) acc->key);
   printable = 1;
 }
      else
 {
   fprintf (e, "%d", (int) acc->key);
   printable = 0;
 }

      fprintf (e, ", %d", (int) acc->id);

      if (! printable)
 {
   if ((acc->flags & ACC_VIRTKEY) != 0)
     fprintf (e, ", VIRTKEY");
   else
     fprintf (e, ", ASCII");
 }

      if ((acc->flags & ACC_SHIFT) != 0)
 fprintf (e, ", SHIFT");
      if ((acc->flags & ACC_CONTROL) != 0)
 fprintf (e, ", CONTROL");
      if ((acc->flags & ACC_ALT) != 0)
 fprintf (e, ", ALT");

      fprintf (e, "\n");
    }

  fprintf (e, "END\n");
}
