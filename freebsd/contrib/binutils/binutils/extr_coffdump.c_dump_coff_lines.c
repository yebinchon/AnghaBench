
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct coff_line {int nlines; int* lines; int* addresses; } ;


 char* _ (char*) ;
 int nl () ;
 int printf (char*,int,...) ;
 int tab (int) ;

__attribute__((used)) static void
dump_coff_lines (struct coff_line *p)
{
  int i;
  int online = 0;

  tab (1);
  printf (_("#lines %d "),p->nlines);

  for (i = 0; i < p->nlines; i++)
    {
      printf ("(%d 0x%x)", p->lines[i], p->addresses[i]);

      online++;

      if (online > 6)
 {
   nl ();
   tab (0);
   online = 0;
 }
    }
  nl ();
  tab (-1);
}
