
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct iv_cand {int id; int pos; scalar_t__ depends_on; scalar_t__ important; struct iv* iv; } ;
struct iv {int dummy; } ;
typedef int FILE ;





 int dump_bitmap (int *,scalar_t__) ;
 int dump_iv (int *,struct iv*) ;
 int fprintf (int *,char*,...) ;

void
dump_cand (FILE *file, struct iv_cand *cand)
{
  struct iv *iv = cand->iv;

  fprintf (file, "candidate %d%s\n",
    cand->id, cand->important ? " (important)" : "");

  if (cand->depends_on)
    {
      fprintf (file, "  depends on ");
      dump_bitmap (file, cand->depends_on);
    }

  if (!iv)
    {
      fprintf (file, "  final value replacement\n");
      return;
    }

  switch (cand->pos)
    {
    case 129:
      fprintf (file, "  incremented before exit test\n");
      break;

    case 130:
      fprintf (file, "  incremented at end\n");
      break;

    case 128:
      fprintf (file, "  original biv\n");
      break;
    }

  dump_iv (file, iv);
}
