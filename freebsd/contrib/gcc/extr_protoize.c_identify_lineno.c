
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* clean_text_base ;

__attribute__((used)) static int
identify_lineno (const char *clean_p)
{
  int line_num = 1;
  const char *scan_p;

  for (scan_p = clean_text_base; scan_p <= clean_p; scan_p++)
    if (*scan_p == '\n')
      line_num++;
  return line_num;
}
