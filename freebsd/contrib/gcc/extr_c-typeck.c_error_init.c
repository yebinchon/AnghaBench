
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char const*) ;
 scalar_t__ alloca (scalar_t__) ;
 int error (char*,char*) ;
 char* print_spelling (char*) ;
 scalar_t__ spelling_length () ;

void
error_init (const char *msgid)
{
  char *ofwhat;

  error ("%s", _(msgid));
  ofwhat = print_spelling ((char *) alloca (spelling_length () + 1));
  if (*ofwhat)
    error ("(near initialization for %qs)", ofwhat);
}
