
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int __ftrace_set_clr_event (char*,char*,char*,int) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char*) ;
 char* strsep (char**,char*) ;

__attribute__((used)) static int ftrace_set_clr_event(char *buf, int set)
{
 char *event = ((void*)0), *sub = ((void*)0), *match;
 match = strsep(&buf, ":");
 if (buf) {
  sub = match;
  event = buf;
  match = ((void*)0);

  if (!strlen(sub) || strcmp(sub, "*") == 0)
   sub = ((void*)0);
  if (!strlen(event) || strcmp(event, "*") == 0)
   event = ((void*)0);
 }

 return __ftrace_set_clr_event(match, sub, event, set);
}
