
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ep_skip_leading_whitespace (char**) ;
 int isspace (char) ;
 int strlen (char*) ;

__attribute__((used)) static char *
ep_parse_optional_if_clause (char **arg)
{
  char *cond_string;

  if (((*arg)[0] != 'i') || ((*arg)[1] != 'f') || !isspace ((*arg)[2]))
    return ((void*)0);


  (*arg) += 2;



  ep_skip_leading_whitespace (arg);
  cond_string = *arg;


  (*arg) += strlen (cond_string);

  return cond_string;
}
