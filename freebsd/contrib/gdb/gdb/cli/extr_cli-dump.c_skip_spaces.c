
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ isspace (char) ;

char *
skip_spaces (char *chp)
{
  if (chp == ((void*)0))
    return ((void*)0);
  while (isspace (*chp))
    chp++;
  return chp;
}
