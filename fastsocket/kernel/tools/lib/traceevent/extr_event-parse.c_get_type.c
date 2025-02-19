
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef enum event_type { ____Placeholder_event_type } event_type ;


 int EVENT_DELIM ;
 int EVENT_DQUOTE ;
 int EVENT_ITEM ;
 int EVENT_NEWLINE ;
 int EVENT_NONE ;
 int EVENT_OP ;
 int EVENT_SPACE ;
 int EVENT_SQUOTE ;
 scalar_t__ isalnum (int) ;
 int isprint (int) ;
 scalar_t__ isspace (int) ;

__attribute__((used)) static enum event_type get_type(int ch)
{
 if (ch == '\n')
  return EVENT_NEWLINE;
 if (isspace(ch))
  return EVENT_SPACE;
 if (isalnum(ch) || ch == '_')
  return EVENT_ITEM;
 if (ch == '\'')
  return EVENT_SQUOTE;
 if (ch == '"')
  return EVENT_DQUOTE;
 if (!isprint(ch))
  return EVENT_NONE;
 if (ch == '(' || ch == ')' || ch == ',')
  return EVENT_DELIM;

 return EVENT_OP;
}
