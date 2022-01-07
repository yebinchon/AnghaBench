
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int pluspresent ;

int
mep_unrecognized_line (int ch)
{
  switch (ch)
    {
    case '+':
      pluspresent = 1;
      return 1;
    default:
      return 0;
    }
}
