
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int EVENT_NEWLINE ;
 int EVENT_SPACE ;
 int free_token (char*) ;
 char* malloc_or_die (int) ;
 char pevent_peek_char () ;
 int pevent_read_token (char**) ;
 int sprintf (char*,char*,char,char) ;
 scalar_t__ strcmp (char*,char*) ;

__attribute__((used)) static enum event_type read_token(char **tok)
{
 enum event_type type;
 char *token = ((void*)0);

 do {
  free_token(token);
  type = pevent_read_token(&token);
 } while (type == EVENT_NEWLINE || type == EVENT_SPACE);


 if (token &&
     (strcmp(token, "=") == 0 || strcmp(token, "!") == 0) &&
     pevent_peek_char() == '~') {

  *tok = malloc_or_die(3);
  sprintf(*tok, "%c%c", *token, '~');
  free_token(token);

  pevent_read_token(&token);
  free_token(token);
 } else
  *tok = token;

 return type;
}
