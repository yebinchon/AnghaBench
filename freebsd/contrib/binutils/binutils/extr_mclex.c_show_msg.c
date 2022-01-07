
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int va_list ;


 int fprintf (int ,char*,...) ;
 char* input_filename ;
 int input_line ;
 int stderr ;
 int vfprintf (int ,char const*,int ) ;

__attribute__((used)) static void
show_msg (const char *kind, const char *msg, va_list argp)
{
  fprintf (stderr, "In %s at line %d: %s: ", input_filename, input_line, kind);
  vfprintf (stderr, msg, argp);
  fprintf (stderr, ".\n");
}
