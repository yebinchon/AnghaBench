
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int EVENT_NEWLINE ;
 int EVENT_NONE ;
 int EVENT_SPACE ;
 int __read_token (char**) ;
 int free_token (char*) ;

__attribute__((used)) static enum event_type read_token_item(char **tok)
{
 enum event_type type;

 for (;;) {
  type = __read_token(tok);
  if (type != EVENT_SPACE && type != EVENT_NEWLINE)
   return type;
  free_token(*tok);
  *tok = ((void*)0);
 }


 *tok = ((void*)0);
 return EVENT_NONE;
}
