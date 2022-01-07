
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ISALNUM (char) ;

void
clean_symbol_name (char *p)
{
  for (; *p; p++)
    if (! (ISALNUM (*p)

     || *p == '$'


     || *p == '.'

    ))
      *p = '_';
}
