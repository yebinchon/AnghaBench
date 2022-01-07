
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gdb_flush (int ) ;
 int gdb_stdout ;
 int parse_escape (char**) ;
 int printf_filtered (char*,int) ;
 int wrap_here (char*) ;

__attribute__((used)) static void
echo_command (char *text, int from_tty)
{
  char *p = text;
  int c;

  if (text)
    while ((c = *p++) != '\0')
      {
 if (c == '\\')
   {


     if (*p == 0)
       return;

     c = parse_escape (&p);
     if (c >= 0)
       printf_filtered ("%c", c);
   }
 else
   printf_filtered ("%c", c);
      }


  wrap_here ("");
  gdb_flush (gdb_stdout);
}
