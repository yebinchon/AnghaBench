
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;
typedef int FILE ;


 int _doprnt (char const*,int ,int *) ;

int
vfprintf (FILE *stream, const char *format, va_list ap)
{
  return _doprnt (format, ap, stream);
}
