
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* skip_quoted_chars (char*,int *,int *) ;

char *
skip_quoted (char *str)
{
  return skip_quoted_chars (str, ((void*)0), ((void*)0));
}
