
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int exit (int) ;
 int vwarnx (char const*,int ) ;

__attribute__((used)) static void
verrx(int eval, const char *fmt, va_list args)
{
 vwarnx(fmt, args);
 exit(eval);
}
