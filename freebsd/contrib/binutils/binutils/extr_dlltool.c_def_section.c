
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int new_directive (int ) ;
 int sprintf (char*,char*,char const*,char*) ;
 int xstrdup (char*) ;

void
def_section (const char *name, int attr)
{
  char buf[200];
  char atts[5];
  char *d = atts;
  if (attr & 1)
    *d++ = 'R';

  if (attr & 2)
    *d++ = 'W';
  if (attr & 4)
    *d++ = 'X';
  if (attr & 8)
    *d++ = 'S';
  *d++ = 0;
  sprintf (buf, "-attr %s %s", name, atts);
  new_directive (xstrdup (buf));
}
