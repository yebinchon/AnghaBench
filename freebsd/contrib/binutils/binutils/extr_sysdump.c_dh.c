
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int printf (char*,...) ;

__attribute__((used)) static void
dh (unsigned char *ptr, int size)
{
  int i;
  int j;
  int span = 16;

  printf ("\n************************************************************\n");

  for (i = 0; i < size; i += span)
    {
      for (j = 0; j < span; j++)
 {
   if (j + i < size)
     printf ("%02x ", ptr[i + j]);
   else
     printf ("   ");
 }

      for (j = 0; j < span && j + i < size; j++)
 {
   int c = ptr[i + j];

   if (c < 32 || c > 127)
     c = '.';
   printf ("%c", c);
 }

      printf ("\n");
    }
}
