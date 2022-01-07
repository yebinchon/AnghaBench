
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int fprintf (int ,char*,char*,int,int) ;
 int getc (int *) ;
 int obstack_1grow (int *,int) ;
 int obstack_grow (int *,char*,int) ;
 char* read_rtx_filename ;
 int read_rtx_lineno ;
 int stderr ;
 int string_obstack ;

__attribute__((used)) static void
read_escape (FILE *infile)
{
  int c = getc (infile);

  switch (c)
    {

    case '\n':
      read_rtx_lineno++;
      return;


    case '\\':
    case '"':
    case '\'':
      break;
    case 'a': case 'b': case 'f': case 'n': case 'r': case 't': case 'v':
    case '0': case '1': case '2': case '3': case '4': case '5': case '6':
    case '7': case 'x':
      obstack_1grow (&string_obstack, '\\');
      break;



    case ';':
      obstack_grow (&string_obstack, "\\n\\t", 4);
      return;


    default:
      fprintf (stderr, "%s:%d: warning: unrecognized escape \\%c\n",
        read_rtx_filename, read_rtx_lineno, c);
      obstack_1grow (&string_obstack, '\\');
      break;
    }

  obstack_1grow (&string_obstack, c);
}
