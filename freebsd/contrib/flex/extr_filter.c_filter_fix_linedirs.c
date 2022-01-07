
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct filter {int dummy; } ;
typedef int regmatch_t ;


 int MAXLINE ;
 int _ (char*) ;
 scalar_t__ fclose (int ) ;
 scalar_t__ ferror (int ) ;
 int fflush (int ) ;
 scalar_t__ fgets (char*,int const,int ) ;
 scalar_t__ flex_alloc (int const) ;
 int flexerror (int ) ;
 int fputs (char*,int ) ;
 int free (char*) ;
 char* headerfilename ;
 int lerrsf (int ,char*) ;
 char* outfilename ;
 int regex_blank_line ;
 int regex_linedir ;
 scalar_t__ regexec (int *,char*,int,int *,int ) ;
 char* regmatch_dup (int *,char*) ;
 int regmatch_strtol (int *,char*,int *,int ) ;
 int snprintf (char*,int const,char*,int,char*) ;
 int stdin ;
 int stdout ;
 scalar_t__ strcmp (char*,char*) ;

int filter_fix_linedirs (struct filter *chain)
{
 char *buf;
 const int readsz = 512;
 int lineno = 1;
 bool in_gen = 1;
 bool last_was_blank = 0;

 if (!chain)
  return 0;

 buf = (char *) flex_alloc (readsz);
 if (!buf)
  flexerror (_("flex_alloc failed in filter_fix_linedirs"));

 while (fgets (buf, readsz, stdin)) {

  regmatch_t m[10];


  if (buf[0] == '#'
   && regexec (&regex_linedir, buf, 3, m, 0) == 0) {

   int num;
   char *fname;


   num = regmatch_strtol (&m[1], buf, ((void*)0), 0);
   fname = regmatch_dup (&m[2], buf);

   if (strcmp (fname,
    outfilename ? outfilename : "<stdout>")
     == 0
    || strcmp (fname,
     headerfilename ? headerfilename : "<stdout>")
     == 0) {

    char *s1, *s2;
    char filename[MAXLINE];

    s1 = fname;
    s2 = filename;

    while ((s2 - filename) < (MAXLINE - 1) && *s1) {

     if (*s1 == '\\')
      *s2++ = '\\';

     if (*s1 == '\"')
      *s2++ = '\\';

     *s2++ = *s1++;
    }

    *s2 = '\0';


    in_gen = 1;
    snprintf (buf, readsz, "#line %d \"%s\"\n",
       lineno + 1, filename);
   }
   else {

    in_gen = 0;
   }

   free (fname);
   last_was_blank = 0;
  }


  else if (in_gen
    && regexec (&regex_blank_line, buf, 0, ((void*)0),
         0) == 0) {
   if (last_was_blank)
    continue;
   else
    last_was_blank = 1;
  }

  else {

   last_was_blank = 0;
  }

  fputs (buf, stdout);
  lineno++;
 }
 fflush (stdout);
 if (ferror (stdout))
  lerrsf (_("error writing output file %s"),
   outfilename ? outfilename : "<stdout>");

 else if (fclose (stdout))
  lerrsf (_("error closing output file %s"),
   outfilename ? outfilename : "<stdout>");

 return 0;
}
