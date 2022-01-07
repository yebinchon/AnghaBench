
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,char*) ;
 char* program_name ;
 int putc (char,int ) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

void
report (const char * format, va_list args)
{
  fprintf (stderr, "%s: ", program_name);
  vfprintf (stderr, format, args);
  putc ('\n', stderr);
}
