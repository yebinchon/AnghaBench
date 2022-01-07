
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct tree_opt_pass {int static_pass_number; struct tree_opt_pass* next; scalar_t__ name; } ;


 int memcpy (struct tree_opt_pass*,struct tree_opt_pass*,int) ;
 struct tree_opt_pass* xmalloc (int) ;

__attribute__((used)) static struct tree_opt_pass **
next_pass_1 (struct tree_opt_pass **list, struct tree_opt_pass *pass)
{


  if (pass->static_pass_number)
    {
      struct tree_opt_pass *new;

      new = xmalloc (sizeof (*new));
      memcpy (new, pass, sizeof (*new));





      if (pass->name)
        {
          pass->static_pass_number -= 1;
          new->static_pass_number = -pass->static_pass_number;
 }

      *list = new;
    }
  else
    {
      pass->static_pass_number = -1;
      *list = pass;
    }

  return &(*list)->next;

}
