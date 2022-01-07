
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int va_list ;
struct TYPE_6__ {size_t _cnt; int _file; void* _ptr; int _flag; } ;
typedef TYPE_1__ FILE ;


 int STRFLAG ;
 int _PATH_DEVNULL ;
 int _doprnt (char const*,int ,TYPE_1__*) ;
 TYPE_1__* fopen (int ,char*) ;
 int putc (char,TYPE_1__*) ;
 int vfprintf (TYPE_1__*,char const*,int ) ;
 int vsprintf (char*,char const*,int ) ;

int
vsnprintf(char *s, size_t n, const char *fmt, va_list args)
{
 static FILE *nullfp;
 int need = 0;

 if (!nullfp)
  nullfp = fopen("/dev/null", "w");
 if (nullfp) {
  need = vfprintf(nullfp, fmt, args);
  if (need < n)
   (void)vsprintf(s, fmt, args);
 }
 return need;

}
