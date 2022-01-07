
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* outf_p ;
struct TYPE_3__ {size_t bufused; scalar_t__* buf; int name; struct TYPE_3__* next; } ;
typedef int FILE ;


 int EOF ;
 int exit (int) ;
 scalar_t__ fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (int ,char*) ;
 scalar_t__ fwrite (scalar_t__*,int,size_t,int *) ;
 TYPE_1__* output_files ;
 int perror (char*) ;

__attribute__((used)) static void
close_output_files (void)
{
  outf_p of;

  for (of = output_files; of; of = of->next)
    {
      FILE * newfile;

      newfile = fopen (of->name, "r");
      if (newfile != ((void*)0) )
 {
   int no_write_p;
   size_t i;

   for (i = 0; i < of->bufused; i++)
     {
       int ch;
       ch = fgetc (newfile);
       if (ch == EOF || ch != (unsigned char) of->buf[i])
  break;
     }
   no_write_p = i == of->bufused && fgetc (newfile) == EOF;
   fclose (newfile);

   if (no_write_p)
     continue;
 }

      newfile = fopen (of->name, "w");
      if (newfile == ((void*)0))
 {
   perror ("opening output file");
   exit (1);
 }
      if (fwrite (of->buf, 1, of->bufused, newfile) != of->bufused)
 {
   perror ("writing output file");
   exit (1);
 }
      if (fclose (newfile) != 0)
 {
   perror ("closing output file");
   exit (1);
 }
    }
}
