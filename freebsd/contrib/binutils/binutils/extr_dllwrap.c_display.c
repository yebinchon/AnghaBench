
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,char*) ;
 int fputc (char,int ) ;
 char* prog_name ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
display (const char * message, va_list args)
{
  if (prog_name != ((void*)0))
    fprintf (stderr, "%s: ", prog_name);

  vfprintf (stderr, message, args);
  fputc ('\n', stderr);
}
