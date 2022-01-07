
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct value {int dummy; } ;
typedef char expression ;
struct command_line {int control_type; int body_count; struct command_line* next; struct command_line** body_list; int line; } ;
struct cleanup {int dummy; } ;
typedef enum command_control_type { ____Placeholder_command_control_type } command_control_type ;


 int QUIT ;


 int do_cleanups (struct cleanup*) ;
 struct value* evaluate_expression (char*) ;
 int execute_command (char*,int ) ;
 int free_current_contents ;

 char* insert_args (int ) ;
 int invalid_control ;
 struct cleanup* make_cleanup (int ,char**) ;
 int null_cleanup ;
 char* parse_expression (char*) ;

 int value_free_to_mark (struct value*) ;
 struct value* value_mark () ;
 int value_true (struct value*) ;
 int warning (char*) ;


enum command_control_type
execute_control_command (struct command_line *cmd)
{
  struct expression *expr;
  struct command_line *current;
  struct cleanup *old_chain = make_cleanup (null_cleanup, 0);
  struct value *val;
  struct value *val_mark;
  int loop;
  enum command_control_type ret;
  char *new_line;



  ret = invalid_control;

  switch (cmd->control_type)
    {
    case 129:

      new_line = insert_args (cmd->line);
      if (!new_line)
 break;
      make_cleanup (free_current_contents, &new_line);
      execute_command (new_line, 0);
      ret = cmd->control_type;
      break;

    case 131:
    case 132:


      ret = cmd->control_type;
      break;

    case 128:
      {

 new_line = insert_args (cmd->line);
 if (!new_line)
   break;
 make_cleanup (free_current_contents, &new_line);
 expr = parse_expression (new_line);
 make_cleanup (free_current_contents, &expr);

 ret = 129;
 loop = 1;


 while (loop == 1)
   {
     int cond_result;

     QUIT;


     val_mark = value_mark ();
     val = evaluate_expression (expr);
     cond_result = value_true (val);
     value_free_to_mark (val_mark);


     if (!cond_result)
       break;


     current = *cmd->body_list;
     while (current)
       {
  ret = execute_control_command (current);



  if (ret == invalid_control || ret == 132)
    {
      loop = 0;
      break;
    }



  if (ret == 131)
    break;


  current = current->next;
       }
   }


 if (ret == 132)
   ret = 129;

 break;
      }

    case 130:
      {
 new_line = insert_args (cmd->line);
 if (!new_line)
   break;
 make_cleanup (free_current_contents, &new_line);

 expr = parse_expression (new_line);
 make_cleanup (free_current_contents, &expr);

 current = ((void*)0);
 ret = 129;


 val_mark = value_mark ();
 val = evaluate_expression (expr);



 if (value_true (val))
   current = *cmd->body_list;
 else if (cmd->body_count == 2)
   current = *(cmd->body_list + 1);
 value_free_to_mark (val_mark);


 while (current)
   {
     ret = execute_control_command (current);


     if (ret != 129)
       break;


     current = current->next;
   }

 break;
      }

    default:
      warning ("Invalid control type in command structure.");
      break;
    }

  do_cleanups (old_chain);

  return ret;
}
