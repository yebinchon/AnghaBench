
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int free (char*) ;
 int stderr ;
 int ui_helpline__push (char*) ;
 scalar_t__ vasprintf (char**,char const*,int ) ;
 int vfprintf (int ,char const*,int ) ;

void ui_helpline__vpush(const char *fmt, va_list ap)
{
 char *s;

 if (vasprintf(&s, fmt, ap) < 0)
  vfprintf(stderr, fmt, ap);
 else {
  ui_helpline__push(s);
  free(s);
 }
}
