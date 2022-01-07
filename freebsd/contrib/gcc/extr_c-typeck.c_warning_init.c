
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* _ (char const*) ;
 scalar_t__ alloca (scalar_t__) ;
 char* print_spelling (char*) ;
 scalar_t__ spelling_length () ;
 int warning (int ,char*,char*) ;

__attribute__((used)) static void
warning_init (const char *msgid)
{
  char *ofwhat;

  warning (0, "%s", _(msgid));
  ofwhat = print_spelling ((char *) alloca (spelling_length () + 1));
  if (*ofwhat)
    warning (0, "(near initialization for %qs)", ofwhat);
}
