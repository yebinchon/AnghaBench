
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TRUE ;
 int free (char*) ;
 char* get_string (int ,int ) ;
 int sh_command (char*) ;
 int shell_prompt ;

void
shell_op()
{
 char *string;

 if (((string = get_string(shell_prompt, TRUE)) != ((void*)0)) &&
   (*string != '\0'))
 {
  sh_command(string);
  free(string);
 }
}
