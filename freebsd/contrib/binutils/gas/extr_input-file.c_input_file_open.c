
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int FOPEN_RT ;
 scalar_t__ ISSPACE (char) ;
 char* _ (char*) ;
 int as_bad (char*,char*,int ) ;
 int assert (int) ;
 int errno ;
 int * f_in ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 scalar_t__ fgets (char*,int,int *) ;
 char* file_name ;
 int * fopen (char*,int ) ;
 int getc (int *) ;
 int preprocess ;
 int * stdin ;
 int strchr (char*,char) ;
 int strncmp (char*,char*,int) ;
 int ungetc (int,int *) ;
 int xstrerror (int ) ;

void
input_file_open (char *filename,
   int pre)
{
  int c;
  char buf[80];

  preprocess = pre;

  assert (filename != 0);
  if (filename[0])
    {
      f_in = fopen (filename, FOPEN_RT);
      file_name = filename;
    }
  else
    {

      f_in = stdin;

      file_name = _("{standard input}");
    }

  if (f_in == ((void*)0))
    {
      as_bad (_("can't open %s for reading: %s"),
       file_name, xstrerror (errno));
      return;
    }

  c = getc (f_in);

  if (ferror (f_in))
    {
      as_bad (_("can't read from %s: %s"),
       file_name, xstrerror (errno));

      fclose (f_in);
      f_in = ((void*)0);
      return;
    }

  if (c == '#')
    {

      c = getc (f_in);
      if (c == 'N')
 {
   if (fgets (buf, sizeof (buf), f_in)
       && !strncmp (buf, "O_APP", 5) && ISSPACE (buf[5]))
     preprocess = 0;
   if (!strchr (buf, '\n'))
     ungetc ('#', f_in);
   else
     ungetc ('\n', f_in);
 }
      else if (c == 'A')
 {
   if (fgets (buf, sizeof (buf), f_in)
       && !strncmp (buf, "PP", 2) && ISSPACE (buf[2]))
     preprocess = 1;
   if (!strchr (buf, '\n'))
     ungetc ('#', f_in);
   else
     ungetc ('\n', f_in);
 }
      else if (c == '\n')
 ungetc ('\n', f_in);
      else
 ungetc ('#', f_in);
    }
  else
    ungetc (c, f_in);
}
