
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int flags; } ;


 int CFM_NORMALIZE_SLASHES ;
 TYPE_1__ gopt ;
 int strlen (char*) ;

void
deslashify(char *s)
{
  if (!(gopt.flags & CFM_NORMALIZE_SLASHES))
    return;

  if (s && *s) {
    char *sl = s + strlen(s);

    while (*--sl == '/' && sl > s)
      *sl = '\0';
  }
}
