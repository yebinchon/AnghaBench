
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*) ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static int perf_stdio__warning(const char *format, va_list args)
{
 fprintf(stderr, "Warning:\n");
 vfprintf(stderr, format, args);
 return 0;
}
