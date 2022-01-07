
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct symlist {int dummy; } ;
typedef int off_t ;
typedef int FILE ;


 int FALSE ;
 int FOPEN_RT ;
 int IS_LINE_TERMINATOR (char) ;
 scalar_t__ IS_WHITESPACE (char) ;
 int TRUE ;
 int _ (char*) ;
 int add_specific_symbol (char*,struct symlist**) ;
 int errno ;
 int fatal (int ,char const*,...) ;
 int fclose (int *) ;
 scalar_t__ ferror (int *) ;
 int * fopen (char const*,int ) ;
 scalar_t__ fread (char*,int,int,int *) ;
 int get_file_size (char const*) ;
 int non_fatal (int ,char const*,unsigned int) ;
 int status ;
 int strerror (int ) ;
 char* xmalloc (int) ;

__attribute__((used)) static void
add_specific_symbols (const char *filename, struct symlist **list)
{
  off_t size;
  FILE * f;
  char * line;
  char * buffer;
  unsigned int line_count;

  size = get_file_size (filename);
  if (size == 0)
    {
      status = 1;
      return;
    }

  buffer = xmalloc (size + 2);
  f = fopen (filename, FOPEN_RT);
  if (f == ((void*)0))
    fatal (_("cannot open '%s': %s"), filename, strerror (errno));

  if (fread (buffer, 1, size, f) == 0 || ferror (f))
    fatal (_("%s: fread failed"), filename);

  fclose (f);
  buffer [size] = '\n';
  buffer [size + 1] = '\0';

  line_count = 1;

  for (line = buffer; * line != '\0'; line ++)
    {
      char * eol;
      char * name;
      char * name_end;
      int finished = FALSE;

      for (eol = line;; eol ++)
 {
   switch (* eol)
     {
     case '\n':
       * eol = '\0';

       if (eol[1] == '\r')
  ++ eol;
       finished = TRUE;
       break;

     case '\r':
       * eol = '\0';

       if (eol[1] == '\n')
  ++ eol;
       finished = TRUE;
       break;

     case 0:
       finished = TRUE;
       break;

     case '#':



       * eol = '\0';
       break;

     default:
       break;
     }

   if (finished)
     break;
 }




      for (name = line; IS_WHITESPACE (* name); name ++)
 ;
      for (name_end = name;
    (! IS_WHITESPACE (* name_end))
    && (! IS_LINE_TERMINATOR (* name_end));
    name_end ++)
 ;

      if (! IS_LINE_TERMINATOR (* name_end))
 {
   char * extra;

   for (extra = name_end + 1; IS_WHITESPACE (* extra); extra ++)
     ;

   if (! IS_LINE_TERMINATOR (* extra))
     non_fatal (_("%s:%d: Ignoring rubbish found on this line"),
         filename, line_count);
 }

      * name_end = '\0';

      if (name_end > name)
 add_specific_symbol (name, list);



      line = eol;
      line_count ++;
    }
}
