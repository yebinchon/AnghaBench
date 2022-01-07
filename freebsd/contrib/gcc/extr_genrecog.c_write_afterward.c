
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct decision {scalar_t__ subroutine_number; int number; int position; } ;


 int change_state (int ,int ,char const*) ;
 int printf (char*,char const*,...) ;

__attribute__((used)) static void
write_afterward (struct decision *start, struct decision *afterward,
   const char *indent)
{
  if (!afterward || start->subroutine_number > 0)
    printf("%sgoto ret0;\n", indent);
  else
    {
      change_state (start->position, afterward->position, indent);
      printf ("%sgoto L%d;\n", indent, afterward->number);
    }
}
