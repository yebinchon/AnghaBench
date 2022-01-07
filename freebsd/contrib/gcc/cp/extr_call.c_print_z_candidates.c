
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int tree ;
struct z_candidate {struct z_candidate* next; int fn; } ;


 scalar_t__ FUNCTION_DECL ;
 scalar_t__ TREE_CODE (int ) ;
 char* _ (char*) ;
 scalar_t__ alloca (size_t) ;
 scalar_t__ equal_functions (int ,int ) ;
 int gcc_gettext_width (char const*) ;
 int memset (char*,char,size_t) ;
 int print_z_candidate (char const*,struct z_candidate*) ;

__attribute__((used)) static void
print_z_candidates (struct z_candidate *candidates)
{
  const char *str;
  struct z_candidate *cand1;
  struct z_candidate **cand2;






  for (cand1 = candidates; cand1; cand1 = cand1->next)
    {
      tree fn = cand1->fn;

      if (TREE_CODE (fn) != FUNCTION_DECL)
 continue;
      cand2 = &cand1->next;
      while (*cand2)
 {
   if (TREE_CODE ((*cand2)->fn) == FUNCTION_DECL
       && equal_functions (fn, (*cand2)->fn))
     *cand2 = (*cand2)->next;
   else
     cand2 = &(*cand2)->next;
 }
    }

  if (!candidates)
    return;

  str = _("candidates are:");
  print_z_candidate (str, candidates);
  if (candidates->next)
    {


      size_t len = gcc_gettext_width (str) + 1;
      char *spaces = (char *) alloca (len);
      memset (spaces, ' ', len-1);
      spaces[len - 1] = '\0';

      candidates = candidates->next;
      do
 {
   print_z_candidate (spaces, candidates);
   candidates = candidates->next;
 }
      while (candidates);
    }
}
