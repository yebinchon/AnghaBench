
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct cmd_list_element {char** (* completer ) (char*,char*) ;scalar_t__ enums; int allow_unknown; struct cmd_list_element** prefixlist; } ;
struct TYPE_2__ {int (* la_word_break_characters ) () ;} ;


 scalar_t__ alloca (int) ;
 struct cmd_list_element* cmdlist ;
 char** complete_on_cmdlist (struct cmd_list_element*,char*,char*) ;
 char** complete_on_enum (scalar_t__,char*,char*) ;
 TYPE_1__* current_language ;
 char** filename_completer (char*,char*) ;
 int gdb_completer_command_word_break_characters ;
 int gdb_completer_file_name_break_characters ;
 scalar_t__ isalnum (char) ;
 char** location_completer (char*,char*) ;
 struct cmd_list_element* lookup_cmd_1 (char**,struct cmd_list_element*,struct cmd_list_element**,int) ;
 int rl_completer_word_break_characters ;
 int * strchr (int ,char) ;
 char* strlen (char const*) ;
 int strncpy (char*,char*,int) ;
 int stub1 () ;
 char** stub2 (char*,char*) ;
 char** stub3 (char*,char*) ;

char **
complete_line (const char *text, char *line_buffer, int point)
{
  char **list = ((void*)0);
  char *tmp_command, *p;

  char *word;
  struct cmd_list_element *c, *result_list;
  rl_completer_word_break_characters =
    current_language->la_word_break_characters();


  tmp_command = (char *) alloca (point + 1);
  p = tmp_command;

  strncpy (tmp_command, line_buffer, point);
  tmp_command[point] = '\0';



  word = tmp_command + point - strlen (text);

  if (point == 0)
    {


      c = (struct cmd_list_element *) -1;
      result_list = 0;
    }
  else
    {
      c = lookup_cmd_1 (&p, cmdlist, &result_list, 1);
    }


  while (*p == ' ' || *p == '\t')
    {
      p++;
    }

  if (!c)
    {


      list = ((void*)0);
    }
  else if (c == (struct cmd_list_element *) -1)
    {
      char *q;



      q = p;
      while (*q && (isalnum (*q) || *q == '-' || *q == '_'))
 ++q;
      if (q != tmp_command + point)
 {





   list = ((void*)0);
 }
      else
 {


   if (result_list)
     {
       list = complete_on_cmdlist (*result_list->prefixlist, p,
       word);
     }
   else
     {
       list = complete_on_cmdlist (cmdlist, p, word);
     }


   rl_completer_word_break_characters =
     gdb_completer_command_word_break_characters;
 }
    }
  else
    {


      if (p == tmp_command + point)
 {


   if (p[-1] == ' ' || p[-1] == '\t')
     {


       if (c->prefixlist)
  {


    list = complete_on_cmdlist (*c->prefixlist, p, word);



    rl_completer_word_break_characters =
      gdb_completer_command_word_break_characters;
  }
       else if (c->enums)
  {
    list = complete_on_enum (c->enums, p, word);
    rl_completer_word_break_characters =
      gdb_completer_command_word_break_characters;
  }
       else
  {


    if (c->completer == filename_completer)
      {
        for (p = word;
      p > tmp_command
        && strchr (gdb_completer_file_name_break_characters, p[-1]) == ((void*)0);
      p--)
   ;
        rl_completer_word_break_characters =
   gdb_completer_file_name_break_characters;
      }
    else if (c->completer == location_completer)
      {


        for (p = word;
      p > tmp_command
        && p[-1] != ' ' && p[-1] != '\t';
      p--)
   ;
      }
    list = (*c->completer) (p, word);
  }
     }
   else
     {




       char *q;


       q = p;
       while (q > tmp_command)
  {
    if (isalnum (q[-1]) || q[-1] == '-' || q[-1] == '_')
      --q;
    else
      break;
  }

       list = complete_on_cmdlist (result_list, q, word);



       rl_completer_word_break_characters =
  gdb_completer_command_word_break_characters;
     }
 }
      else
 {


   if (c->prefixlist && !c->allow_unknown)
     {


       list = ((void*)0);
     }
   else if (c->enums)
     {
       list = complete_on_enum (c->enums, p, word);
     }
   else
     {

       if (c->completer == filename_completer)
  {


    for (p = word;
         p > tmp_command
    && strchr (gdb_completer_file_name_break_characters, p[-1]) == ((void*)0);
         p--)
      ;
    rl_completer_word_break_characters =
      gdb_completer_file_name_break_characters;
  }
       else if (c->completer == location_completer)
  {
    for (p = word;
         p > tmp_command
    && p[-1] != ' ' && p[-1] != '\t';
         p--)
      ;
  }
       list = (*c->completer) (p, word);
     }
 }
    }

  return list;
}
