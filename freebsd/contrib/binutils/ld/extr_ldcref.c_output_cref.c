
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct cref_hash_entry {int dummy; } ;
typedef int FILE ;


 int ASSERT (int) ;
 int FILECOL ;
 char* _ (char*) ;
 int cref_fill_array ;
 int cref_hash_traverse (int *,int ,struct cref_hash_entry***) ;
 int cref_initialized ;
 int cref_sort_array ;
 int cref_symcount ;
 int cref_table ;
 int fprintf (int *,char*,...) ;
 int output_one_cref (int *,struct cref_hash_entry*) ;
 int putc (char,int *) ;
 int qsort (struct cref_hash_entry**,int,int,int ) ;
 int strlen (char const*) ;
 struct cref_hash_entry** xmalloc (int) ;

void
output_cref (FILE *fp)
{
  int len;
  struct cref_hash_entry **csyms, **csym_fill, **csym, **csym_end;
  const char *msg;

  fprintf (fp, _("\nCross Reference Table\n\n"));
  msg = _("Symbol");
  fprintf (fp, "%s", msg);
  len = strlen (msg);
  while (len < FILECOL)
    {
      putc (' ', fp);
      ++len;
    }
  fprintf (fp, _("File\n"));

  if (! cref_initialized)
    {
      fprintf (fp, _("No symbols\n"));
      return;
    }

  csyms = xmalloc (cref_symcount * sizeof (*csyms));

  csym_fill = csyms;
  cref_hash_traverse (&cref_table, cref_fill_array, &csym_fill);
  ASSERT ((size_t) (csym_fill - csyms) == cref_symcount);

  qsort (csyms, cref_symcount, sizeof (*csyms), cref_sort_array);

  csym_end = csyms + cref_symcount;
  for (csym = csyms; csym < csym_end; csym++)
    output_one_cref (fp, *csym);
}
