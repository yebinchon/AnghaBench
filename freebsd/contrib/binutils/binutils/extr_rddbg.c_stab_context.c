
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct saved_stab {char* string; int type; int desc; int value; } ;


 int SAVE_STABS_COUNT ;
 char* _ (char*) ;
 char* bfd_get_stab_name (int) ;
 int fprintf (int ,char*,...) ;
 int fprintf_vma (int ,int ) ;
 struct saved_stab* saved_stabs ;
 int saved_stabs_index ;
 int stderr ;

__attribute__((used)) static void
stab_context (void)
{
  int i;

  fprintf (stderr, _("Last stabs entries before error:\n"));
  fprintf (stderr, "n_type n_desc n_value  string\n");

  i = saved_stabs_index;
  do
    {
      struct saved_stab *stabp;

      stabp = saved_stabs + i;
      if (stabp->string != ((void*)0))
 {
   const char *s;

   s = bfd_get_stab_name (stabp->type);
   if (s != ((void*)0))
     fprintf (stderr, "%-6s", s);
   else if (stabp->type == 0)
     fprintf (stderr, "HdrSym");
   else
     fprintf (stderr, "%-6d", stabp->type);
   fprintf (stderr, " %-6d ", stabp->desc);
   fprintf_vma (stderr, stabp->value);
   if (stabp->type != 0)
     fprintf (stderr, " %s", stabp->string);
   fprintf (stderr, "\n");
 }
      i = (i + 1) % SAVE_STABS_COUNT;
    }
  while (i != saved_stabs_index);
}
