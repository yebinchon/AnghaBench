
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct disent {int completer_index; int insn; int priority; struct disent* next_ent; struct disent* nexte; } ;


 struct disent* disinsntable ;
 int* insn_list ;
 int insn_list_len ;
 int printf (char*,...) ;

__attribute__((used)) static void
print_dis_table (void)
{
  int x;
  struct disent *cent = disinsntable;

  printf ("static const char dis_table[] = {\n");
  for (x = 0; x < insn_list_len; x++)
    {
      if ((x > 0) && ((x % 12) == 0))
 printf ("\n");

      printf ("0x%02x, ", insn_list[x]);
    }
  printf ("\n};\n\n");

  printf ("static const struct ia64_dis_names ia64_dis_names[] = {\n");
  while (cent != ((void*)0))
    {
      struct disent *ent = cent;

      while (ent != ((void*)0))
 {
   printf ("{ 0x%x, %d, %d, %d },\n", ent->completer_index,
    ent->insn, (ent->nexte != ((void*)0) ? 1 : 0),
                  ent->priority);
   ent = ent->nexte;
 }
      cent = cent->next_ent;
    }
  printf ("};\n\n");
}
