
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int cmdlist ;
 char** complete_on_cmdlist (int ,char*,char*) ;

char **
command_completer (char *text, char *word)
{
  return complete_on_cmdlist (cmdlist, text, word);
}
