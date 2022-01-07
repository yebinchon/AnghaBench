
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int SEEK_SET ;
 int errno ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int ,char*,char const*,char*) ;
 int fputs (char*,int ) ;
 scalar_t__ fseek (int *,int,int ) ;
 scalar_t__ md5_stream (int *,unsigned char*) ;
 int printf (char*,unsigned char,char*) ;
 int stderr ;
 int stdout ;
 char* xstrerror (int ) ;

__attribute__((used)) static void
dosum (const char *file)
{
  FILE *f;
  unsigned char result[16];
  int i;

  f = fopen (file, "rb");
  if (!f)
    {
      fprintf (stderr, "opening %s: %s\n", file, xstrerror (errno));
      exit (1);
    }


  if (fseek (f, 16, SEEK_SET) != 0)
     {
      fprintf (stderr, "seeking in %s: %s\n", file, xstrerror (errno));
      exit (1);
    }

  if (md5_stream (f, result) != 0
      || fclose (f) != 0)
     {
      fprintf (stderr, "reading %s: %s\n", file, xstrerror (errno));
      exit (1);
    }

  fputs ("const unsigned char executable_checksum[16] = { ", stdout);
  for (i = 0; i < 16; i++)
    printf ("%#02x%s", result[i], i == 15 ? " };\n" : ", ");
}
