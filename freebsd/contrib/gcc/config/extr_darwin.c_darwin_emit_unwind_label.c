
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int tree ;
struct TYPE_2__ {char* (* strip_name_encoding ) (char const*) ;} ;
typedef int FILE ;


 int DECL_ASSEMBLER_NAME (int ) ;
 scalar_t__ DECL_ASSEMBLER_NAME_SET_P (int ) ;
 int DECL_NAME (int ) ;
 scalar_t__ DECL_VISIBILITY (int ) ;
 scalar_t__ DECL_WEAK (int ) ;
 char* IDENTIFIER_POINTER (int ) ;
 scalar_t__ TREE_PUBLIC (int ) ;
 scalar_t__ VISIBILITY_HIDDEN ;
 char* concat (char*,int ,char const*,char*,char*,int *) ;
 int fprintf (int *,char*,char*,...) ;
 int free (char*) ;
 int name_needs_quotes (char const*) ;
 int no_dead_strip (int *,char*) ;
 char* stub1 (char const*) ;
 TYPE_1__ targetm ;
 int user_label_prefix ;

void
darwin_emit_unwind_label (FILE *file, tree decl, int for_eh, int empty)
{
  const char *base;
  char *lab;
  bool need_quotes;

  if (DECL_ASSEMBLER_NAME_SET_P (decl))
    base = IDENTIFIER_POINTER (DECL_ASSEMBLER_NAME (decl));
  else
    base = IDENTIFIER_POINTER (DECL_NAME (decl));

  base = targetm.strip_name_encoding (base);
  need_quotes = name_needs_quotes (base);

  if (! for_eh)
    return;

  lab = concat (need_quotes ? "\"" : "", user_label_prefix, base, ".eh",
  need_quotes ? "\"" : "", ((void*)0));

  if (TREE_PUBLIC (decl))
    fprintf (file, "\t%s %s\n",
      (DECL_VISIBILITY (decl) != VISIBILITY_HIDDEN
       ? ".globl"
       : ".private_extern"),
      lab);

  if (DECL_WEAK (decl))
    fprintf (file, "\t.weak_definition %s\n", lab);

  if (empty)
    {
      fprintf (file, "%s = 0\n", lab);





      no_dead_strip (file, lab);
    }
  else
    fprintf (file, "%s:\n", lab);

  free (lab);
}
