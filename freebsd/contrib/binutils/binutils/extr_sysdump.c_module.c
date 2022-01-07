
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EOF ;
 int IT_tr_CODE ;
 int file ;
 int getc (int ) ;
 scalar_t__ getone (int) ;
 int printf (char*,...) ;
 int tab (int,char*) ;
 int ungetc (int,int ) ;

__attribute__((used)) static void
module (void)
{
  int c = 0;
  int l = 0;

  tab (1, "MODULE***\n");

  do
    {
      c = getc (file);
      ungetc (c, file);

      c &= 0x7f;
    }
  while (getone (c) && c != IT_tr_CODE);

  tab (-1, "");

  c = getc (file);
  while (c != EOF)
    {
      printf ("%02x ", c);
      l++;
      if (l == 32)
 {
   printf ("\n");
   l = 0;
 }
      c = getc (file);
    }
}
