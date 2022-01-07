
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int body_count; struct command_line* line; struct command_line* next; struct command_line** body_list; } ;


 int xfree (struct command_line*) ;

void
free_command_lines (struct command_line **lptr)
{
  struct command_line *l = *lptr;
  struct command_line *next;
  struct command_line **blist;
  int i;

  while (l)
    {
      if (l->body_count > 0)
 {
   blist = l->body_list;
   for (i = 0; i < l->body_count; i++, blist++)
     free_command_lines (blist);
 }
      next = l->next;
      xfree (l->line);
      xfree (l);
      l = next;
    }
  *lptr = ((void*)0);
}
