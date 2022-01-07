
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct decision_head {struct decision* first; } ;
struct decision {scalar_t__ subroutine_number; char const* position; struct decision_head success; struct decision* next; TYPE_1__* afterward; int number; scalar_t__ need_label; } ;
typedef enum routine_type { ____Placeholder_routine_type } routine_type ;
struct TYPE_2__ {char const* position; int number; } ;


 scalar_t__ IS_SPLIT (int) ;
 int OUTPUT_LABEL (char*,int ) ;
 int change_state (char const*,char const*,char*) ;
 int printf (char*,...) ;
 int putchar (char) ;
 int strlen (char const*) ;
 int write_tree_1 (struct decision_head*,int,int) ;

__attribute__((used)) static void
write_tree (struct decision_head *head, const char *prevpos,
     enum routine_type type, int initial)
{
  struct decision *p = head->first;

  putchar ('\n');
  if (p->need_label)
    OUTPUT_LABEL (" ", p->number);

  if (! initial && p->subroutine_number > 0)
    {
      static const char * const name_prefix[] = {
   "recog", "split", "peephole2"
      };

      static const char * const call_suffix[] = {
   ", pnum_clobbers", "", ", _pmatch_len"
      };




      if (p->afterward)
 {
   printf ("  tem = %s_%d (x0, insn%s);\n",
    name_prefix[type], p->subroutine_number, call_suffix[type]);
   if (IS_SPLIT (type))
     printf ("  if (tem != 0)\n    return tem;\n");
   else
     printf ("  if (tem >= 0)\n    return tem;\n");

   change_state (p->position, p->afterward->position, "  ");
   printf ("  goto L%d;\n", p->afterward->number);
 }
      else
 {
   printf ("  return %s_%d (x0, insn%s);\n",
    name_prefix[type], p->subroutine_number, call_suffix[type]);
 }
    }
  else
    {
      int depth = strlen (p->position);

      change_state (prevpos, p->position, "  ");
      write_tree_1 (head, depth, type);

      for (p = head->first; p; p = p->next)
        if (p->success.first)
          write_tree (&p->success, p->position, type, 0);
    }
}
