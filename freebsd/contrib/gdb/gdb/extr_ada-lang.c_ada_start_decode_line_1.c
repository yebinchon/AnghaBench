
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
char *
ada_start_decode_line_1 (char *line)
{


  char *p;
  for (p = line; *p != '\000' && *p != ' ' && *p != ':'; p += 1)
    ;
  return p;
}
