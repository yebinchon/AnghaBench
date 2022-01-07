
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;
 char* skip_spaces (char*) ;

__attribute__((used)) static char *next_arg(char *args, char **param, char **val)
{
 unsigned int i, equals = 0;
 int in_quote = 0, quoted = 0;
 char *next;

 if (*args == '"') {
  args++;
  in_quote = 1;
  quoted = 1;
 }

 for (i = 0; args[i]; i++) {
  if (isspace(args[i]) && !in_quote)
   break;
  if (equals == 0) {
   if (args[i] == '=')
    equals = i;
  }
  if (args[i] == '"')
   in_quote = !in_quote;
 }

 *param = args;
 if (!equals)
  *val = ((void*)0);
 else {
  args[equals] = '\0';
  *val = args + equals + 1;


  if (**val == '"') {
   (*val)++;
   if (args[i-1] == '"')
    args[i-1] = '\0';
  }
  if (quoted && args[i-1] == '"')
   args[i-1] = '\0';
 }

 if (args[i]) {
  args[i] = '\0';
  next = args + i + 1;
 } else
  next = args + i;


 return skip_spaces(next);
}
