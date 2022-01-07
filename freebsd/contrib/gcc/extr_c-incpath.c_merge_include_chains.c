
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cpp_dir {char* name; struct cpp_dir* next; } ;
typedef int cpp_reader ;
struct TYPE_2__ {struct cpp_dir* next; } ;


 size_t AFTER ;
 size_t BRACKET ;
 size_t QUOTE ;
 size_t SYSTEM ;
 char* _ (char*) ;
 int fprintf (int ,char*,char*) ;
 struct cpp_dir** heads ;
 struct cpp_dir* remove_duplicates (int *,struct cpp_dir*,struct cpp_dir*,struct cpp_dir*,int) ;
 int stderr ;
 TYPE_1__** tails ;

__attribute__((used)) static void
merge_include_chains (cpp_reader *pfile, int verbose)
{


  if (heads[SYSTEM])
    tails[SYSTEM]->next = heads[AFTER];
  else
    heads[SYSTEM] = heads[AFTER];
  heads[SYSTEM] = remove_duplicates (pfile, heads[SYSTEM], 0, 0, verbose);



  heads[BRACKET] = remove_duplicates (pfile, heads[BRACKET], heads[SYSTEM],
          heads[SYSTEM], verbose);



  heads[QUOTE] = remove_duplicates (pfile, heads[QUOTE], heads[SYSTEM],
        heads[BRACKET], verbose);


  if (verbose)
    {
      struct cpp_dir *p;

      fprintf (stderr, "%s", _("#include \"...\" search starts here:\n"));
      for (p = heads[QUOTE];; p = p->next)
 {
   if (p == heads[BRACKET])
     fprintf (stderr, "%s", _("#include <...> search starts here:\n"));
   if (!p)
     break;
   fprintf (stderr, " %s\n", p->name);
 }
      fprintf (stderr, "%s", _("End of search list.\n"));
    }
}
