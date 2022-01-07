
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char const*) ;
 scalar_t__ alloca (scalar_t__) ;
 int pedwarn (char*,char*) ;
 char* print_spelling (char*) ;
 scalar_t__ spelling_length () ;

void
pedwarn_init (const char *msgid)
{
  char *ofwhat;

  pedwarn ("%s", _(msgid));
  ofwhat = print_spelling ((char *) alloca (spelling_length () + 1));
  if (*ofwhat)
    pedwarn ("(near initialization for %qs)", ofwhat);
}
