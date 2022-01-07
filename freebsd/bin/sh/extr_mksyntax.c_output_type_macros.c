
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int fprintf (int ,char*,char const*) ;
 int hfile ;
 char** macro ;

__attribute__((used)) static void
output_type_macros(void)
{
 const char **pp;

 for (pp = macro ; *pp ; pp++)
  fprintf(hfile, "%s\n", *pp);
}
