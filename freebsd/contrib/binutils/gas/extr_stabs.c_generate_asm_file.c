
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* FAKE_LABEL_NAME ;
 int colon (char*) ;
 int free (char*) ;
 char* input_line_pointer ;
 int s_stab (char) ;
 int sprintf (char*,char*,...) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 size_t strlen (char*) ;
 int strncpy (char*,char*,size_t) ;
 char* xmalloc (int) ;
 char* xstrdup (char*) ;

__attribute__((used)) static void
generate_asm_file (int type, char *file)
{
  static char *last_file;
  static int label_count;
  char *hold;
  char sym[30];
  char *buf;
  char *tmp = file;
  char *endp = file + strlen (file);
  char *bufp;

  if (last_file != ((void*)0)
      && strcmp (last_file, file) == 0)
    return;





  hold = input_line_pointer;

  sprintf (sym, "%sF%d", FAKE_LABEL_NAME, label_count);
  ++label_count;




  bufp = buf = xmalloc (2 * strlen (file) + strlen (sym) + 12);

  *bufp++ = '"';

  while (tmp < endp)
    {
      char *bslash = strchr (tmp, '\\');
      size_t len = (bslash) ? (size_t) (bslash - tmp + 1) : strlen (tmp);




      strncpy (bufp, tmp, len);

      tmp += len;
      bufp += len;

      if (bslash != ((void*)0))
 *bufp++ = '\\';
    }

  sprintf (bufp, "\",%d,0,0,%s\n", type, sym);

  input_line_pointer = buf;
  s_stab ('s');
  colon (sym);

  if (last_file != ((void*)0))
    free (last_file);
  last_file = xstrdup (file);

  free (buf);

  input_line_pointer = hold;
}
