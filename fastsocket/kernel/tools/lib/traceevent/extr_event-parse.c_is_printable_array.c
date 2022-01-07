
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int isprint (char) ;

__attribute__((used)) static int is_printable_array(char *p, unsigned int len)
{
 unsigned int i;

 for (i = 0; i < len && p[i]; i++)
  if (!isprint(p[i]))
      return 0;
 return 1;
}
