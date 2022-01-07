
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 int EOF ;
 int fatal_error (int,char*,int ) ;
 int getc (int *) ;
 int snprintf (char*,int,char*,char const,...) ;

__attribute__((used)) static void
check_line (int line, FILE *e, const char *str)
{
  const char *p;
  int c;
  char buf[1000];

  p = str;
  while (1)
    {
      c = getc (e);

      if (*p == '\0')
 {
   if (c != '\n')
     {
       snprintf (buf, sizeof buf, "got '%c' when expecting newline", c);
       fatal_error (line, buf, 0);
     }
   c = getc (e);
   if (c != EOF)
     {
       snprintf (buf, sizeof buf, "got '%c' when expecting EOF", c);
       fatal_error (line, buf, 0);
     }
   return;
 }

      if (c != *p)
 {
   snprintf (buf, sizeof buf, "expected '%c', got '%c'", *p, c);
   fatal_error (line, buf, 0);
 }

      ++p;
    }
}
