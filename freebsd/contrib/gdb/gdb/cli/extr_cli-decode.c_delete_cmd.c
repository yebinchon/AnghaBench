
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct cmd_list_element {struct cmd_list_element* next; TYPE_2__* hookee_post; TYPE_1__* hookee_pre; int name; } ;
struct TYPE_4__ {scalar_t__ hook_post; } ;
struct TYPE_3__ {scalar_t__ hook_pre; } ;


 scalar_t__ strcmp (int ,char*) ;
 int xfree (struct cmd_list_element*) ;

void
delete_cmd (char *name, struct cmd_list_element **list)
{
  struct cmd_list_element *c;
  struct cmd_list_element *p;

  while (*list && strcmp ((*list)->name, name) == 0)
    {
      if ((*list)->hookee_pre)
      (*list)->hookee_pre->hook_pre = 0;
      if ((*list)->hookee_post)
      (*list)->hookee_post->hook_post = 0;
      p = (*list)->next;
      xfree (* list);
      *list = p;
    }

  if (*list)
    for (c = *list; c->next;)
      {
 if (strcmp (c->next->name, name) == 0)
   {
          if (c->next->hookee_pre)
            c->next->hookee_pre->hook_pre = 0;
          if (c->next->hookee_post)
            c->next->hookee_post->hook_post = 0;

     p = c->next->next;
     xfree (c->next);
     c->next = p;
   }
 else
   c = c->next;
      }
}
