
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int DEBUG_STREAM ;
 int debug_level ;
 int fflush (int ) ;
 int fprintf (int ,char*) ;
 int vfprintf (int ,char const*,int ) ;

void
vadebug(int level, const char *format, va_list ap)
{
 if (level > debug_level)
  return;

 (void) fprintf(DEBUG_STREAM, "DEBUG: ");
 (void) vfprintf(DEBUG_STREAM, format, ap);
 fflush(DEBUG_STREAM);
}
