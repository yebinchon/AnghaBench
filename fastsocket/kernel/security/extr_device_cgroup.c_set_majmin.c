
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sprintf (char*,char*,unsigned int) ;
 int strcpy (char*,char*) ;

__attribute__((used)) static void set_majmin(char *str, unsigned m)
{
 if (m == ~0)
  strcpy(str, "*");
 else
  sprintf(str, "%u", m);
}
