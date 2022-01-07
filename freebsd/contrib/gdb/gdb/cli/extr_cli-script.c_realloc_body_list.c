
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct command_line {int body_count; struct command_line** body_list; } ;


 int memcpy (struct command_line**,struct command_line**,int) ;
 int xfree (struct command_line**) ;
 scalar_t__ xmalloc (int) ;

__attribute__((used)) static void
realloc_body_list (struct command_line *command, int new_length)
{
  int n;
  struct command_line **body_list;

  n = command->body_count;


  if (new_length <= n)
    return;

  body_list = (struct command_line **)
    xmalloc (sizeof (struct command_line *) * new_length);

  memcpy (body_list, command->body_list, sizeof (struct command_line *) * n);

  xfree (command->body_list);
  command->body_list = body_list;
  command->body_count = new_length;
}
