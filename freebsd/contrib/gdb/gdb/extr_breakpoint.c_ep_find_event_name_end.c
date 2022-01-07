
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isalnum (char) ;

__attribute__((used)) static char *
ep_find_event_name_end (char *arg)
{
  char *s = arg;
  char *event_name_end = ((void*)0);


  if (arg == ((void*)0))
    return ((void*)0);




  while (*s != '\0')
    {
      if (!isalnum (*s) && (*s != '_'))
 break;
      event_name_end = s;
      s++;
    }

  return event_name_end;
}
