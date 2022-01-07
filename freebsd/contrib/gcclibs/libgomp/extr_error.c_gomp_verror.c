
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fputc (char,int ) ;
 int fputs (char*,int ) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
gomp_verror (const char *fmt, va_list list)
{
  fputs ("\nlibgomp: ", stderr);
  vfprintf (stderr, fmt, list);
  fputc ('\n', stderr);
}
