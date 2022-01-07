
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int * glist ;
 int glistlen ;
 int print_completer_entry (int ) ;
 int printf (char*) ;

__attribute__((used)) static void
print_completer_table ()
{
  int x;

  printf ("static const struct ia64_completer_table\ncompleter_table[] = {\n");
  for (x = 0; x < glistlen; x++)
    print_completer_entry (glist[x]);
  printf ("};\n\n");
}
